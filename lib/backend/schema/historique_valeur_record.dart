import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoriqueValeurRecord extends FirestoreRecord {
  HistoriqueValeurRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "valeur" field.
  double? _valeur;
  double get valeur => _valeur ?? 0.0;
  bool hasValeur() => _valeur != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "idInvestissement" field.
  DocumentReference? _idInvestissement;
  DocumentReference? get idInvestissement => _idInvestissement;
  bool hasIdInvestissement() => _idInvestissement != null;

  void _initializeFields() {
    _valeur = castToType<double>(snapshotData['valeur']);
    _date = snapshotData['date'] as DateTime?;
    _idInvestissement = snapshotData['idInvestissement'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historique_valeur');

  static Stream<HistoriqueValeurRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoriqueValeurRecord.fromSnapshot(s));

  static Future<HistoriqueValeurRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistoriqueValeurRecord.fromSnapshot(s));

  static HistoriqueValeurRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoriqueValeurRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoriqueValeurRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoriqueValeurRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoriqueValeurRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoriqueValeurRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoriqueValeurRecordData({
  double? valeur,
  DateTime? date,
  DocumentReference? idInvestissement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valeur': valeur,
      'date': date,
      'idInvestissement': idInvestissement,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoriqueValeurRecordDocumentEquality
    implements Equality<HistoriqueValeurRecord> {
  const HistoriqueValeurRecordDocumentEquality();

  @override
  bool equals(HistoriqueValeurRecord? e1, HistoriqueValeurRecord? e2) {
    return e1?.valeur == e2?.valeur &&
        e1?.date == e2?.date &&
        e1?.idInvestissement == e2?.idInvestissement;
  }

  @override
  int hash(HistoriqueValeurRecord? e) =>
      const ListEquality().hash([e?.valeur, e?.date, e?.idInvestissement]);

  @override
  bool isValidKey(Object? o) => o is HistoriqueValeurRecord;
}
