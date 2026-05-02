// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: duplicate_import

import 'index.dart'; // Imports other custom actions

// Your PDF imports
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> generateStatementPDF(DocumentReference cardRef) async {
  // 1. Fetch transactions directly from Firebase for this specific card
  final querySnapshot = await FirebaseFirestore.instance
      .collection('transactions')
      .where('card_ref', isEqualTo: cardRef)
      .orderBy('date', descending: true)
      .get();

  final transactions = querySnapshot.docs;

  // 2. Create the PDF Document
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            // PDF Header
            pw.Text("Relevé de Compte",
                style: pw.TextStyle(
                    fontSize: 28,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.deepPurple)),
            pw.SizedBox(height: 10),
            pw.Text(
                "Date d'édition: ${DateFormat('dd/MM/yyyy').format(DateTime.now())}",
                style: pw.TextStyle(fontSize: 14)),
            pw.SizedBox(height: 30),

            // Build the Data Table automatically from Firebase Docs
            // ignore: deprecated_member_use
            pw.Table.fromTextArray(
              context: context,
              headers: ['Date', 'Commerçant', 'Type', 'Montant (TND)'],
              headerStyle: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold, color: PdfColors.white),
              headerDecoration:
                  const pw.BoxDecoration(color: PdfColors.deepPurple),
              rowDecoration: const pw.BoxDecoration(
                border: pw.Border(
                    bottom: pw.BorderSide(color: PdfColors.grey, width: 0.5)),
              ),
              data: transactions.map((doc) {
                final data = doc.data();

                // Bulletproof Date Formatting (Handles both Timestamp and String)
                String dateStr = "Inconnu";
                if (data['date'] != null) {
                  if (data['date'] is Timestamp) {
                    DateTime dt = (data['date'] as Timestamp).toDate();
                    dateStr = DateFormat('dd/MM/yyyy HH:mm').format(dt);
                  } else if (data['date'] is String) {
                    dateStr = data['date']
                        .toString(); // Fallback if it was saved as text
                  }
                }

                // Format the money dynamically
                String amountStr = data['amount']?.toString() ?? "0.0";
                if (data['type'] == 'credit') {
                  amountStr = "+ $amountStr";
                } else {
                  amountStr = "- $amountStr";
                }

                // Return a row for the table
                return [
                  dateStr,
                  data['merchant_name'] ?? 'Inconnu',
                  data['type'] == 'credit' ? 'Crédit' : 'Débit',
                  amountStr
                ];
              }).toList(),
            ),
          ],
        );
      },
    ),
  );

  // 3. Trigger the Native OS Print / Save As PDF Dialog!
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
    name: 'Releve_de_compte.pdf',
  );
}
