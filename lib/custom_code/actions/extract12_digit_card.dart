// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

// ML Kit Imports
import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:path_provider/path_provider.dart';

Future<String> extract12DigitCard(FFUploadedFile imageFile) async {
  if (imageFile.bytes == null) {
    return "Erreur d'image";
  }
  try {
    // 1. Write image
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/scanned_card.png');
    await file.writeAsBytes(imageFile.bytes!);
    // 2. Initialize ML Kit
    final inputImage = InputImage.fromFile(file);
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

    // 3. Process image
    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);
    await textRecognizer.close();
    // The raw text exactly as the AI read it
    String rawText = recognizedText.text;
    // 4. OCR Correction (Fixing AI mistakes and removing ALL spaces/dashes/newlines)
    String cleanText = rawText
        .replaceAll('O', '0')
        .replaceAll('o', '0')
        .replaceAll('I', '1')
        .replaceAll('l', '1')
        .replaceAll('S', '5')
        .replaceAll(RegExp(r'\s+'), '') // Removes spaces, tabs, and newlines
        .replaceAll('-', ''); // Removes dashes
    // 5. Look for the 12-digit number
    RegExp regex = RegExp(r'\d{12,16}');
    final match = regex.firstMatch(cleanText);

    if (match != null) {
      String foundNumber = match.group(0)!;
      if (foundNumber.length >= 12) {
        String twelveDigits = foundNumber.substring(0, 12);
        return "${twelveDigits.substring(0, 4)} ${twelveDigits.substring(4, 8)} ${twelveDigits.substring(8, 12)}";
      }
    }

    // X-RAY DEBUG: If it fails, print exactly what the AI read to the Snack Bar!
    return "L'IA a vu: $rawText";
  } catch (e) {
    return "Erreur: $e";
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
