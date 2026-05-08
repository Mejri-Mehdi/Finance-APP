// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

Future generateRecurringTransactions(DocumentReference walletRef) async {
  final db = FirebaseFirestore.instance;
  final now = DateTime.now();

  final snapshot = await db
      .collection('Transaction')
      .where('walletReff', isEqualTo: walletRef)
      .where('isRecurrent', isEqualTo: true)
      .get();

  for (var doc in snapshot.docs) {
    final data = doc.data();

    if (data['dateTransaction'] == null || data['frequence'] == null) {
      continue;
    }

    final DateTime dateTransaction =
        (data['dateTransaction'] as Timestamp).toDate();

    DateTime nextDate;

    if (data['nextDate'] == null) {
      nextDate = calculateNextDate(dateTransaction, data['frequence']);

      await doc.reference.update({
        'nextDate': Timestamp.fromDate(nextDate),
      });

      continue; // important: ne crée PAS transaction maintenant
    } else {
      nextDate = (data['nextDate'] as Timestamp).toDate();
    }

    if (now.isBefore(nextDate)) {
      continue; // pas encore le moment
    }

    final double montant = getDoubleValue(data['montant']);
    final String type = (data['type'] ?? '').toString().toLowerCase();

    await db.collection('Transaction').add({
      'montant': data['montant'],
      'type': data['type'],
      'categorie': data['categorie'],
      'description': data['description'],
      'methodePaiement': data['methodePaiement'],
      'localisation': data['localisation'],
      'walletReff': walletRef,
      'isRecurrent': false,
      'frequence': '',
      'nextDate': null,
      'dateTransaction': Timestamp.fromDate(now),
    });

    if (type == 'revenu') {
      await walletRef.update({
        'revenuTotal': FieldValue.increment(montant),
        'soldeCalcule': FieldValue.increment(montant),
      });
    } else if (type == 'depense') {
      await walletRef.update({
        'depenseTotale': FieldValue.increment(montant),
        'soldeCalcule': FieldValue.increment(-montant),
      });
    }

    final DateTime newNextDate = calculateNextDate(now, data['frequence']);
    await doc.reference.update({
      'nextDate': Timestamp.fromDate(newNextDate),
    });
  }
}

DateTime calculateNextDate(DateTime baseDate, String frequence) {
  if (frequence == 'Chaque jour') {
    return baseDate.add(const Duration(minutes: 5)); // TEST
    //return baseDate.add(const Duration(days: 1));
  }

  if (frequence == 'Chaque semaine') {
    return baseDate.add(const Duration(days: 7));
  }

  return DateTime(
    baseDate.year,
    baseDate.month + 1,
    baseDate.day,
    baseDate.hour,
    baseDate.minute,
  );
}

double getDoubleValue(dynamic value) {
  if (value == null) return 0.0;
  if (value is int) return value.toDouble();
  if (value is double) return value;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString()) ?? 0.0;
}
