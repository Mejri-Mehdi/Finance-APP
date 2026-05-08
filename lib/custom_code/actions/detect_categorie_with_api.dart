// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> detectCategorieWithApi(String texte) async {
  try {
    final url = Uri.parse('https://api.jina.ai/v1/classify');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer jina_9ba24d5d326e4b30b6e07586b5e9fcfcth35pkfuOFe_fiEM5GJtpOyzJiKR',
      },
      body: jsonEncode({
        "model": "jina-embeddings-v3",
        "input": [texte],
        "labels": [
          "Nourriture",
          "Transport",
          "Santé",
          "Achats",
          "Loisir",
          "Logement",
          "Revenu",
          "Autre"
        ]
      }),
    );

    if (response.statusCode != 200) {
      return "Autre";
    }

    final data = jsonDecode(response.body);

    if (data["data"] != null &&
        data["data"].length > 0 &&
        data["data"][0]["prediction"] != null) {
      return data["data"][0]["prediction"];
    }

    return "Autre";
  } catch (e) {
    return "Autre";
  }
}
