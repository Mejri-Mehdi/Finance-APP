import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

/// the Dart code runs the Luhn algorithm
String? generateCardNumber() {
  // Advanced Business Logic: Luhn Algorithm for a 12-digit card
  final random = math.Random();
  String prefix = "4"; // Starts with 4 (like Visa)

  // Generate 10 random digits (to make 11 total so far)
  String digits = prefix;
  for (int i = 0; i < 10; i++) {
    digits += random.nextInt(10).toString();
  }

  // Calculate the Luhn Checksum to find the mathematically valid 12th digit
  int sum = 0;
  bool alternate = true;

  for (int i = digits.length - 1; i >= 0; i--) {
    int n = int.parse(digits[i]);
    if (alternate) {
      n *= 2;
      if (n > 9) {
        n = (n % 10) + 1;
      }
    }
    sum += n;
    alternate = !alternate;
  }

  int checkDigit = (10 - (sum % 10)) % 10;
  String fullNumber = digits + checkDigit.toString();

  // Format as XXXX XXXX XXXX
  return "${fullNumber.substring(0, 4)} ${fullNumber.substring(4, 8)} ${fullNumber.substring(8, 12)}";
}

/// the Dart code runs the Luhn algorithm
String? generateCVV() {
  final random = math.Random();
  String cvv = "";
  for (int i = 0; i < 3; i++) {
    cvv += random.nextInt(10).toString();
  }
  return cvv;
}

/// the Dart code runs the Luhn algorithm
String? generateExpiryDate() {
  // Automatically sets expiry to exactly 3 years from today
  DateTime now = DateTime.now();
  int expYear = now.year + 3;

  String monthStr = now.month.toString().padLeft(2, '0');
  String yearStr = expYear.toString().substring(2, 4); // Gets '29' from 2029

  return "$monthStr/$yearStr";
}

List<double> getChartTotals(List<TransactionsRecord>? txList) {
  if (txList == null || txList.isEmpty) return [1.0];

  // MAGIC FIX
  final debits = txList
      .where((tx) => tx.type != null && tx.type!.contains('bit'))
      .toList();
  if (debits.isEmpty) return [1.0];
  Map<String, double> totals = {};
  for (var tx in debits) {
    String cat = (tx.category != null && tx.category!.isNotEmpty)
        ? tx.category!
        : 'Autre';
    double amount = tx.amount ?? 0.0;
    totals[cat] = (totals[cat] ?? 0.0) + amount;
  }

  Set<String> categories = {};
  for (var tx in debits) {
    String cat = (tx.category != null && tx.category!.isNotEmpty)
        ? tx.category!
        : 'Autre';
    categories.add(cat);
  }

  List<double> result = [];
  for (String cat in categories) {
    result.add(totals[cat]!);
  }
  return result;
}

List<String> getChartCategories(List<TransactionsRecord>? txList) {
  if (txList == null || txList.isEmpty) return ["Aucune dépense"];

  // MAGIC FIX: Filters for your exact database strings
  final debits = txList
      .where((tx) => tx.type != null && tx.type!.contains('bit'))
      .toList();
  if (debits.isEmpty) return ["Aucune dépense"];
  Set<String> categories = {};
  for (var tx in debits) {
    String cat = (tx.category != null && tx.category!.isNotEmpty)
        ? tx.category!
        : 'Autre';
    categories.add(cat);
  }
  return categories.toList();
}

String getTotalSpent(List<TransactionsRecord>? txList) {
  if (txList == null || txList.isEmpty) return "0.00";
  double total = 0.0;
  for (var tx in txList) {
    // MAGIC FIX: Now catches "Débit (Achat)"
    if (tx.type != null && tx.type!.contains('bit')) {
      total += tx.amount ?? 0.0;
    }
  }
  return total.toStringAsFixed(2);
}

String getCategoryTotal(
  List<TransactionsRecord>? txList,
  String categoryName,
) {
  if (txList == null || txList.isEmpty) return "0.00";
  double total = 0.0;
  for (var tx in txList) {
    if (tx.type != null && tx.type!.contains('bit')) {
      String cat = (tx.category != null && tx.category!.isNotEmpty)
          ? tx.category!
          : 'Autre';
      if (cat == categoryName) {
        total += tx.amount ?? 0.0;
      }
    }
  }
  return total.toStringAsFixed(2);
}

String getCategoryCount(
  List<TransactionsRecord>? txList,
  String categoryName,
) {
  if (txList == null || txList.isEmpty) return "0 transaction";
  int count = 0;

  for (var tx in txList) {
    if (tx.type != null && tx.type!.contains('bit')) {
      String cat = (tx.category != null && tx.category!.isNotEmpty)
          ? tx.category!
          : 'Autre';
      if (cat == categoryName) {
        count++;
      }
    }
  }
  // Automatically adds an 's' if there is more than 1!
  return "$count transaction${count > 1 ? 's' : ''}";
}

String getMapUrl(String? merchantName) {
  String searchLocation;
  if (merchantName == null || merchantName.isEmpty) {
    searchLocation = "Tunisia";
  } else {
    searchLocation = "$merchantName, Tunisia";
  }

  // Encode the URL so spaces become %20
  String encodedName = Uri.encodeComponent(searchLocation);

  // The magic URL – added &z=16 to force a close-up view of the exact place
  String mapUrl =
      "https://maps.google.com/maps?q=$encodedName&output=embed&z=8";

  // Return full HTML instead of just the URL.
  // This solves the mobile WebView blocking issue!
  return """
    <!DOCTYPE html>
    <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <style>
          body { margin: 0; padding: 0; overflow: hidden; }
          iframe { width: 100vw; height: 100vh; border: none; }
        </style>
      </head>
      <body>
        <iframe src="$mapUrl" allowfullscreen></iframe>
      </body>
    </html>
  """;
}

bool isTransactionFraudulent(
  double amount,
  String merchantName,
) {
  int riskScore = 0;

  if (amount >= 1000) {
    riskScore += 60;
  } else if (amount >= 500) {
    riskScore += 30;
  } else if (amount >= 200) {
    riskScore += 10;
  }
  String merchantLower = merchantName.toLowerCase();
  List<String> highRiskKeywords = [
    'crypto',
    'casino',
    'bet',
    'pari',
    'transfert inconnu',
    'western union'
  ];

  for (String keyword in highRiskKeywords) {
    if (merchantLower.contains(keyword)) {
      riskScore += 45;
      break;
    }
  }
  DateTime now = DateTime.now();
  if (now.hour >= 2 && now.hour <= 5) {
    riskScore += 25;
  }
  // Bypass the FlutterFlow UI bug: We do the math inside the code.
  if (riskScore > 75) {
    return true; // DANGER: Fraud detected
  } else {
    return false; // SAFE: Let it pass
  }
}

List<double>? pieValues(
  double depense,
  double revenu,
) {
  return [depense, revenu];
}

List<double> newCustomFunction(List<TransactionRecord> transactions) {
  return transactions.map((t) {
    return (t.montant ?? 0).toDouble();
  }).toList();
}

List<double> categorieCounts(List<TransactionRecord> transactions) {
  final Map<String, double> counts = {
    'Nourriture': 0,
    'Transport': 0,
    'Santé': 0,
    'Achats': 0,
    'Loisir': 0,
    'Logement': 0,
    'Revenu': 0,
    'Autre': 0,
  };

  for (final item in transactions) {
    final categorie = (item.categorie ?? '').toLowerCase().trim();

    if (categorie == 'nourriture') {
      counts['Nourriture'] = counts['Nourriture']! + 1;
    } else if (categorie == 'transport') {
      counts['Transport'] = counts['Transport']! + 1;
    } else if (categorie == 'sante' || categorie == 'santé') {
      counts['Santé'] = counts['Santé']! + 1;
    } else if (categorie == 'achats') {
      counts['Achats'] = counts['Achats']! + 1;
    } else if (categorie == 'loisir') {
      counts['Loisir'] = counts['Loisir']! + 1;
    } else if (categorie == 'logement') {
      counts['Logement'] = counts['Logement']! + 1;
    } else if (categorie == 'revenu') {
      counts['Revenu'] = counts['Revenu']! + 1;
    } else if (categorie.isNotEmpty) {
      counts['Autre'] = counts['Autre']! + 1;
    }
  }

  final sorted = counts.entries
      .where((e) => e.key != 'Autre' && e.value > 0)
      .toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  final values = sorted.take(4).map((e) => e.value).toList();

  if (counts['Autre']! > 0) {
    values.add(counts['Autre']!);
  }

  return values;
}

List<String> categorieLabels(List<TransactionRecord> transactions) {
  final Map<String, double> counts = {
    'Nourriture': 0,
    'Transport': 0,
    'Santé': 0,
    'Achats': 0,
    'Loisir': 0,
    'Logement': 0,
    'Revenu': 0,
    'Autre': 0,
  };

  for (final item in transactions) {
    final categorie = (item.categorie ?? '').toLowerCase().trim();

    if (categorie == 'nourriture') {
      counts['Nourriture'] = counts['Nourriture']! + 1;
    } else if (categorie == 'transport') {
      counts['Transport'] = counts['Transport']! + 1;
    } else if (categorie == 'sante') {
      counts['Santé'] = counts['Santé']! + 1;
    } else if (categorie == 'achats') {
      counts['Achats'] = counts['Achats']! + 1;
    } else if (categorie == 'loisir') {
      counts['Loisir'] = counts['Loisir']! + 1;
    } else if (categorie == 'logement') {
      counts['Logement'] = counts['Logement']! + 1;
    } else if (categorie == 'revenu') {
      counts['Revenu'] = counts['Revenu']! + 1;
    } else {
      counts['Autre'] = counts['Autre']! + 1;
    }
  }

  final sorted = counts.entries
      .where((e) => e.key != 'Autre' && e.value > 0)
      .toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  final labels = sorted.take(4).map((e) => e.key).toList();
  if (counts['Autre']! > 0) {
    labels.add('Autre');
  }

  return labels;
}

String fileToBase64Image(FFUploadedFile file) {
  final bytes = file.bytes;

  if (bytes == null || bytes.isEmpty) {
    return '';
  }

  return 'data:image/jpeg;base64,${base64Encode(bytes)}';
}

String extractMontant(String text) {
  final lines = text
      .replaceAll('\r', '\n')
      .split('\n')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty)
      .toList();

  final amountRegex = RegExp(r'(\d+[,.]\d{2,3})');

  String cleanNumber(String value) {
    return value.replaceAll(' ', '').replaceAll('.', ',');
  }

  bool isBadLine(String line) {
    final l = line.toUpperCase();
    return l.contains('MONTANT PAY') ||
        l.contains('MONNAIE') ||
        l.contains('RENDU') ||
        l.contains('REDUCTION') ||
        l.contains('RÉDUCTION') ||
        l.contains('-0,000');
  }

  String firstAmountNear(int index, int maxLines) {
    for (int j = index; j < lines.length && j <= index + maxLines; j++) {
      if (isBadLine(lines[j])) continue;

      final matches = amountRegex.allMatches(lines[j]).toList();
      if (matches.isNotEmpty) {
        return cleanNumber(matches.last.group(1)!);
      }
    }
    return '';
  }

  // Carrefour : TOTAL À PAYER puis chercher le montant avec TND plus loin
  for (int i = 0; i < lines.length; i++) {
    final u = lines[i].toUpperCase();

    if (u.contains('TOTAL À PAYER') || u.contains('TOTAL A PAYER')) {
      for (int j = i + 1; j < lines.length && j <= i + 40; j++) {
        final line = lines[j];
        final upper = line.toUpperCase();

        if (isBadLine(line)) continue;

        if (upper.contains('TND')) {
          final match = amountRegex.firstMatch(line);
          if (match != null) {
            return cleanNumber(match.group(1)!);
          }
        }
      }
    }
  }

  // Clinique : Total DT TTC
  // Clinique : Total DT TTC / Total OT TTC -> prendre le DERNIER montant proche
  for (int i = 0; i < lines.length; i++) {
    final u = lines[i].toUpperCase();

    if (u.contains('TOTAL DT TTC') ||
        u.contains('TOTAL TTC') ||
        u.contains('TOTAL OT TTC')) {
      String lastAmount = '';

      for (int j = i; j < lines.length && j <= i + 5; j++) {
        final matches = amountRegex.allMatches(lines[j]).toList();

        if (matches.isNotEmpty) {
          lastAmount = matches.last.group(1)!;
        }
      }

      if (lastAmount.isNotEmpty) {
        return cleanNumber(lastAmount);
      }
    }
  }

  // Taxi : TOTAL
  for (int i = 0; i < lines.length; i++) {
    final u = lines[i].toUpperCase();

    if (u == 'TOTAL' || u.startsWith('TOTAL ')) {
      final result = firstAmountNear(i, 4);
      if (result.isNotEmpty) return result;
    }
  }

  // Fallback général : autres reçus possibles
  // On cherche les mots-clés classiques, sans toucher Carrefour / Clinique / Taxi.
  final fallbackKeywords = [
    'NET A PAYER',
    'NET À PAYER',
    'A PAYER',
    'À PAYER',
    'TOTAL GENERAL',
    'TOTAL GÉNÉRAL',
    'TOTAL TTC',
    'MONTANT TOTAL',
    'AMOUNT DUE',
    'TOTAL DUE',
    'GRAND TOTAL',
  ];

  for (int i = 0; i < lines.length; i++) {
    final u = lines[i].toUpperCase();

    final hasKeyword = fallbackKeywords.any((k) => u.contains(k));

    if (hasKeyword && !isBadLine(lines[i])) {
      for (int j = i; j < lines.length && j <= i + 6; j++) {
        if (isBadLine(lines[j])) continue;

        final matches = amountRegex.allMatches(lines[j]).toList();

        if (matches.isNotEmpty) {
          return cleanNumber(matches.last.group(1)!);
        }
      }
    }
  }

  // Dernier secours : montant suivi par devise
  // Exemple : 30,000 TND / 54.25 AED / 956,200 DT
  for (final line in lines) {
    final u = line.toUpperCase();

    if (isBadLine(line)) continue;

    if (u.contains('TND') || u.contains('DT') || u.contains('AED')) {
      final matches = amountRegex.allMatches(line).toList();

      if (matches.isNotEmpty) {
        return cleanNumber(matches.last.group(1)!);
      }
    }
  }

  return '';
}

String extractCategorie(String text) {
  final t = text.toLowerCase();

  if (t.contains('taxi') ||
      t.contains('driver') ||
      t.contains('pick up') ||
      t.contains('drop off') ||
      t.contains('distance') ||
      t.contains('trip') ||
      t.contains('course') ||
      t.contains('chauffeur') ||
      t.contains('uber') ||
      t.contains('bolt')) {
    return 'Transport';
  }

  if (t.contains('pharmacie') ||
      t.contains('clinique') ||
      t.contains('medical') ||
      t.contains('médical') ||
      t.contains('cardiovasculaire') ||
      t.contains('doliprane') ||
      t.contains('sirop') ||
      t.contains('vitamine') ||
      t.contains('medicament') ||
      t.contains('médicament')) {
    return 'Santé';
  }

  if (t.contains('carrefour') ||
      t.contains('pain') ||
      t.contains('lait') ||
      t.contains('oeufs') ||
      t.contains('œufs') ||
      t.contains('poulet') ||
      t.contains('tomates') ||
      t.contains('banane') ||
      t.contains('monoprix') ||
      t.contains('aziza') ||
      t.contains('mg')) {
    return 'Nourriture';
  }

  if (t.contains('facture') ||
      t.contains('steg') ||
      t.contains('sonede') ||
      t.contains('loyer')) {
    return 'Logement';
  }

  return 'Autre';
}

String getEpargneNotifLevel(
  double soldeCalcule,
  double objectifEpargne,
  bool notif50Shown,
  bool notif70Shown,
  bool notif90Shown,
  bool notif100Shown,
) {
  if (objectifEpargne <= 0) {
    return 'none';
  }

  final progress = (soldeCalcule / objectifEpargne) * 100;

  if (progress >= 100 && !notif100Shown) {
    return '100';
  }

  if (progress >= 90 && progress < 100 && !notif90Shown) {
    return '90';
  }

  if (progress >= 70 && progress < 90 && !notif70Shown) {
    return '70';
  }

  if (progress >= 50 && progress < 70 && !notif50Shown) {
    return '50';
  }

  return 'none';
}

List<double> walletSoldes(List<WalletRecord>? wallets) {
  if (wallets == null || wallets.isEmpty) {
    return [];
  }

  return wallets.map((wallet) {
    return wallet.soldeCalcule;
  }).toList();
}

bool checkLimitWarning(
  double spend,
  double limit,
  double newAmount,
) {
  return (spend + newAmount) >= (limit * 0.8);
}
