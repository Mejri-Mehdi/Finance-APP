import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "card_ref" field.
  DocumentReference? _cardRef;
  DocumentReference? get cardRef => _cardRef;
  bool hasCardRef() => _cardRef != null;

  // "merchant_name" field.
  String? _merchantName;
  String get merchantName => _merchantName ?? '';
  bool hasMerchantName() => _merchantName != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _cardRef = snapshotData['card_ref'] as DocumentReference?;
    _merchantName = snapshotData['merchant_name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _type = snapshotData['type'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  DocumentReference? cardRef,
  String? merchantName,
  double? amount,
  String? type,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'card_ref': cardRef,
      'merchant_name': merchantName,
      'amount': amount,
      'type': type,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.cardRef == e2?.cardRef &&
        e1?.merchantName == e2?.merchantName &&
        e1?.amount == e2?.amount &&
        e1?.type == e2?.type &&
        e1?.date == e2?.date;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality()
      .hash([e?.cardRef, e?.merchantName, e?.amount, e?.type, e?.date]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
