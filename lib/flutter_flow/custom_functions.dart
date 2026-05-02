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
