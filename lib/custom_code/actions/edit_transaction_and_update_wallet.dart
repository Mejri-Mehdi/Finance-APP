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

Future editTransactionAndUpdateWallet(
  DocumentReference transactionRef,
  DocumentReference walletRef,
  String? newType,
  String? newCategorie,
  String? newDescription,
  DateTime? newDateTransaction,
  String? newMethodePaiement,
  double? newMontant,
  String? newLocalisation,
  bool? newIsRecurrent,
  String? newFrequence,
  DateTime? newNextDate,
) async {
  try {
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      final transactionSnap = await transaction.get(transactionRef);
      final walletSnap = await transaction.get(walletRef);

      if (!transactionSnap.exists || !walletSnap.exists) {
        throw Exception('Transaction ou Wallet introuvable');
      }

      final oldData = transactionSnap.data() as Map<String, dynamic>;
      final walletData = walletSnap.data() as Map<String, dynamic>;

      final oldMontant = ((oldData['montant'] ?? 0) as num).toDouble();

      final oldType = (oldData['type'] ?? '')
          .toString()
          .toLowerCase()
          .trim()
          .replaceAll('é', 'e');

      final oldDate = oldData['dateTransaction'] is Timestamp
          ? (oldData['dateTransaction'] as Timestamp).toDate()
          : DateTime.now();

      final cleanType = (newType ?? oldData['type'] ?? 'revenu')
          .toString()
          .toLowerCase()
          .trim()
          .replaceAll('é', 'e');

      final finalCategorie =
          newCategorie ?? (oldData['categorie'] ?? '').toString();

      final finalDescription =
          newDescription ?? (oldData['description'] ?? '').toString();

      final finalDate = newDateTransaction ?? oldDate;

      final finalMethode =
          newMethodePaiement ?? (oldData['methodePaiement'] ?? '').toString();

      final finalMontant = newMontant ?? oldMontant;

      final finalLocalisation =
          newLocalisation ?? (oldData['localisation'] ?? '').toString();

      final finalIsRecurrent =
          newIsRecurrent ?? (oldData['isRecurrent'] ?? false) as bool;

      double soldeCalcule =
          ((walletData['soldeCalcule'] ?? 0) as num).toDouble();

      double depenseTotale =
          ((walletData['depenseTotale'] ?? 0) as num).toDouble();

      double revenuTotal = ((walletData['revenuTotal'] ?? 0) as num).toDouble();

      // Enlever l'ancien effet
      if (oldType == 'depense') {
        depenseTotale -= oldMontant;
        soldeCalcule += oldMontant;
      } else if (oldType == 'revenu') {
        revenuTotal -= oldMontant;
        soldeCalcule -= oldMontant;
      }

      // Ajouter le nouvel effet
      if (cleanType == 'depense') {
        depenseTotale += finalMontant;
        soldeCalcule -= finalMontant;
      } else if (cleanType == 'revenu') {
        revenuTotal += finalMontant;
        soldeCalcule += finalMontant;
      }

      transaction.update(transactionRef, {
        'type': cleanType,
        'categorie': finalCategorie,
        'description': finalDescription,
        'dateTransaction': Timestamp.fromDate(finalDate),
        'methodePaiement': finalMethode,
        'montant': finalMontant,
        'localisation': finalLocalisation,
        'isRecurrent': finalIsRecurrent,
        'frequence': newFrequence ?? (oldData['frequence'] ?? '').toString(),
        'nextDate': newNextDate != null
            ? Timestamp.fromDate(newNextDate)
            : oldData['nextDate'],
      });

      transaction.update(walletRef, {
        'soldeCalcule': soldeCalcule,
        'depenseTotale': depenseTotale,
        'revenuTotal': revenuTotal,
      });
    });
  } catch (e) {
    print('ERROR editTransactionAndUpdateWallet: $e');
    rethrow;
  }
}
