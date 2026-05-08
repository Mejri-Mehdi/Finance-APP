import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionRecord extends FirestoreRecord {
  TransactionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "dateTransaction" field.
  DateTime? _dateTransaction;
  DateTime? get dateTransaction => _dateTransaction;
  bool hasDateTransaction() => _dateTransaction != null;

  // "methodePaiement" field.
  String? _methodePaiement;
  String get methodePaiement => _methodePaiement ?? '';
  bool hasMethodePaiement() => _methodePaiement != null;

  // "montant" field.
  double? _montant;
  double get montant => _montant ?? 0.0;
  bool hasMontant() => _montant != null;

  // "localisation" field.
  String? _localisation;
  String get localisation => _localisation ?? '';
  bool hasLocalisation() => _localisation != null;

  // "isRecurrent" field.
  bool? _isRecurrent;
  bool get isRecurrent => _isRecurrent ?? false;
  bool hasIsRecurrent() => _isRecurrent != null;

  // "frequence" field.
  String? _frequence;
  String get frequence => _frequence ?? '';
  bool hasFrequence() => _frequence != null;

  // "nextDate" field.
  DateTime? _nextDate;
  DateTime? get nextDate => _nextDate;
  bool hasNextDate() => _nextDate != null;

  // "walletReff" field.
  DocumentReference? _walletReff;
  DocumentReference? get walletReff => _walletReff;
  bool hasWalletReff() => _walletReff != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _categorie = snapshotData['categorie'] as String?;
    _description = snapshotData['description'] as String?;
    _dateTransaction = snapshotData['dateTransaction'] as DateTime?;
    _methodePaiement = snapshotData['methodePaiement'] as String?;
    _montant = castToType<double>(snapshotData['montant']);
    _localisation = snapshotData['localisation'] as String?;
    _isRecurrent = snapshotData['isRecurrent'] as bool?;
    _frequence = snapshotData['frequence'] as String?;
    _nextDate = snapshotData['nextDate'] as DateTime?;
    _walletReff = snapshotData['walletReff'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transaction');

  static Stream<TransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionRecord.fromSnapshot(s));

  static Future<TransactionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionRecord.fromSnapshot(s));

  static TransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionRecordData({
  String? type,
  String? categorie,
  String? description,
  DateTime? dateTransaction,
  String? methodePaiement,
  double? montant,
  String? localisation,
  bool? isRecurrent,
  String? frequence,
  DateTime? nextDate,
  DocumentReference? walletReff,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'categorie': categorie,
      'description': description,
      'dateTransaction': dateTransaction,
      'methodePaiement': methodePaiement,
      'montant': montant,
      'localisation': localisation,
      'isRecurrent': isRecurrent,
      'frequence': frequence,
      'nextDate': nextDate,
      'walletReff': walletReff,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionRecordDocumentEquality implements Equality<TransactionRecord> {
  const TransactionRecordDocumentEquality();

  @override
  bool equals(TransactionRecord? e1, TransactionRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.categorie == e2?.categorie &&
        e1?.description == e2?.description &&
        e1?.dateTransaction == e2?.dateTransaction &&
        e1?.methodePaiement == e2?.methodePaiement &&
        e1?.montant == e2?.montant &&
        e1?.localisation == e2?.localisation &&
        e1?.isRecurrent == e2?.isRecurrent &&
        e1?.frequence == e2?.frequence &&
        e1?.nextDate == e2?.nextDate &&
        e1?.walletReff == e2?.walletReff;
  }

  @override
  int hash(TransactionRecord? e) => const ListEquality().hash([
        e?.type,
        e?.categorie,
        e?.description,
        e?.dateTransaction,
        e?.methodePaiement,
        e?.montant,
        e?.localisation,
        e?.isRecurrent,
        e?.frequence,
        e?.nextDate,
        e?.walletReff
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionRecord;
}
