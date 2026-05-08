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
  // If no name is found, default to a map of Tunisia
  if (merchantName == null || merchantName.isEmpty) {
    return "https://maps.google.com/maps?q=Tunisia&output=embed";
  }

  // We add ", Tunisia" to the end so it doesn't accidentally find a "Zara" in France!
  // Uri.encodeComponent replaces spaces with %20 so the URL doesn't break.
  String encodedName = Uri.encodeComponent("$merchantName, Tunisia");

  // This magic URL forces Google Maps to load the search result without an API key!
  return "https://maps.google.com/maps?q=$encodedName&output=embed";
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
