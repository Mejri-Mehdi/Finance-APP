import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsRecord extends FirestoreRecord {
  CardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "card_number" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "card_holder_name" field.
  String? _cardHolderName;
  String get cardHolderName => _cardHolderName ?? '';
  bool hasCardHolderName() => _cardHolderName != null;

  // "expiry_date" field.
  String? _expiryDate;
  String get expiryDate => _expiryDate ?? '';
  bool hasExpiryDate() => _expiryDate != null;

  // "cvv" field.
  String? _cvv;
  String get cvv => _cvv ?? '';
  bool hasCvv() => _cvv != null;

  // "card_network" field.
  String? _cardNetwork;
  String get cardNetwork => _cardNetwork ?? '';
  bool hasCardNetwork() => _cardNetwork != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "daily_limit" field.
  double? _dailyLimit;
  double get dailyLimit => _dailyLimit ?? 0.0;
  bool hasDailyLimit() => _dailyLimit != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "current_spend" field.
  double? _currentSpend;
  double get currentSpend => _currentSpend ?? 0.0;
  bool hasCurrentSpend() => _currentSpend != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _cardNumber = snapshotData['card_number'] as String?;
    _cardHolderName = snapshotData['card_holder_name'] as String?;
    _expiryDate = snapshotData['expiry_date'] as String?;
    _cvv = snapshotData['cvv'] as String?;
    _cardNetwork = snapshotData['card_network'] as String?;
    _balance = castToType<double>(snapshotData['balance']);
    _currency = snapshotData['currency'] as String?;
    _status = snapshotData['status'] as String?;
    _dailyLimit = castToType<double>(snapshotData['daily_limit']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _currentSpend = castToType<double>(snapshotData['current_spend']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cards');

  static Stream<CardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardsRecord.fromSnapshot(s));

  static Future<CardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardsRecord.fromSnapshot(s));

  static CardsRecord fromSnapshot(DocumentSnapshot snapshot) => CardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardsRecordData({
  DocumentReference? userRef,
  String? cardNumber,
  String? cardHolderName,
  String? expiryDate,
  String? cvv,
  String? cardNetwork,
  double? balance,
  String? currency,
  String? status,
  double? dailyLimit,
  DateTime? createdAt,
  double? currentSpend,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'card_number': cardNumber,
      'card_holder_name': cardHolderName,
      'expiry_date': expiryDate,
      'cvv': cvv,
      'card_network': cardNetwork,
      'balance': balance,
      'currency': currency,
      'status': status,
      'daily_limit': dailyLimit,
      'created_at': createdAt,
      'current_spend': currentSpend,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardsRecordDocumentEquality implements Equality<CardsRecord> {
  const CardsRecordDocumentEquality();

  @override
  bool equals(CardsRecord? e1, CardsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.cardHolderName == e2?.cardHolderName &&
        e1?.expiryDate == e2?.expiryDate &&
        e1?.cvv == e2?.cvv &&
        e1?.cardNetwork == e2?.cardNetwork &&
        e1?.balance == e2?.balance &&
        e1?.currency == e2?.currency &&
        e1?.status == e2?.status &&
        e1?.dailyLimit == e2?.dailyLimit &&
        e1?.createdAt == e2?.createdAt &&
        e1?.currentSpend == e2?.currentSpend;
  }

  @override
  int hash(CardsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.cardNumber,
        e?.cardHolderName,
        e?.expiryDate,
        e?.cvv,
        e?.cardNetwork,
        e?.balance,
        e?.currency,
        e?.status,
        e?.dailyLimit,
        e?.createdAt,
        e?.currentSpend
      ]);

  @override
  bool isValidKey(Object? o) => o is CardsRecord;
}
