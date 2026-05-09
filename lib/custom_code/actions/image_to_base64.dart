// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'dart:convert';

String? imageToBase64(FFUploadedFile? file) {
  // Advanced workaround: Converts a raw image file into a text string
  // so it can be saved in Firestore for free without Firebase Storage!

  if (file == null || file.bytes == null) {
    return null;
  }

  // Convert the raw image bytes into a Base64 string
  String base64String = base64Encode(file.bytes!);

  // Add the HTML data prefix so FlutterFlow can still display it as an image!
  return 'data:image/png;base64,$base64String';
}
