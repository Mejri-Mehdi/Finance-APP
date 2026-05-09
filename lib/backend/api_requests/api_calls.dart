import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetExchangeRatesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getExchangeRates',
      apiUrl: 'https://api.exchangerate-api.com/v4/latest/TND',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? rateEUR(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rates.EUR''',
      ));
  static double? rateUSD(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rates.USD''',
      ));
}

class InitPaymentCall {
  static Future<ApiCallResponse> call({
    double? amount,
  }) async {
    final ffApiRequestBody = '''
{
  "receiverWalletId": "69f53425cd2bd9f6adcd9207",
  "token": "TND",
  "amount": ${amount},
  "type": "immediate",
  "description": "Rechargement de la carte",
  "acceptedPaymentMethods": [
    "bank_card",
    "e-DINAR"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Init Payment',
      apiUrl:
          'https://api.preprod.konnect.network/api/v2/payments/init-payment',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': '69f5341acd2bd9f6adcd91f0:dt0hwvz6eF6yTz3Evj51A6B7',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic paymentUrl(dynamic response) => getJsonField(
        response,
        r'''$.payUrl''',
      );
}

class ScanRecuOCRCall {
  static Future<ApiCallResponse> call({
    String? base64Image = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'scanRecuOCR',
      apiUrl: 'https://api.ocr.space/parse/image',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'language': "fre",
        'isOverlayRequired': "false",
        'OCREngine': "2",
        'base64Image': base64Image,
        'apikey': "K83772750088957",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBitcoinPriceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBitcoinPrice',
      apiUrl: 'https://api.coingecko.com/api/v3/simple/price',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ids': "bitcoin",
        'vs_currencies': "usd",
        'include_24hr_change': "true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bitcoin.usd''',
      ));
  static double? change(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.bitcoin.usd_24h_change''',
      ));
}

class ConvertTNDToDeviceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ConvertTNDToDevice',
      apiUrl: 'https://open.er-api.com/v6/latest/TND',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
