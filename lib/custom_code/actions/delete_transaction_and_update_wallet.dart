// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future deleteTransactionAndUpdateWallet(
  DocumentReference transactionRef,
  DocumentReference walletRef,
) async {
  await FirebaseFirestore.instance.runTransaction((transaction) async {
    final transactionSnap = await transaction.get(transactionRef);
    final walletSnap = await transaction.get(walletRef);

    if (!transactionSnap.exists || !walletSnap.exists) {
      throw Exception('Transaction ou Wallet introuvable');
    }

    final data = transactionSnap.data() as Map<String, dynamic>;
    final walletData = walletSnap.data() as Map<String, dynamic>;

    final montant = ((data['montant'] ?? 0) as num).toDouble();
    final type = (data['type'] ?? '')
        .toString()
        .toLowerCase()
        .trim()
        .replaceAll('é', 'e');

    double soldeCalcule = ((walletData['soldeCalcule'] ?? 0) as num).toDouble();
    double depenseTotale =
        ((walletData['depenseTotale'] ?? 0) as num).toDouble();
    double revenuTotal = ((walletData['revenuTotal'] ?? 0) as num).toDouble();

    if (type == 'depense') {
      depenseTotale -= montant;
      soldeCalcule += montant;
    } else if (type == 'revenu') {
      revenuTotal -= montant;
      soldeCalcule -= montant;
    }

    transaction.update(walletRef, {
      'soldeCalcule': soldeCalcule,
      'depenseTotale': depenseTotale,
      'revenuTotal': revenuTotal,
    });

    transaction.delete(transactionRef);
  });
}
