import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestissementsRecord extends FirestoreRecord {
  InvestissementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idUser" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  bool hasIdUser() => _idUser != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "montantInitial" field.
  double? _montantInitial;
  double get montantInitial => _montantInitial ?? 0.0;
  bool hasMontantInitial() => _montantInitial != null;

  // "montantActuel" field.
  double? _montantActuel;
  double get montantActuel => _montantActuel ?? 0.0;
  bool hasMontantActuel() => _montantActuel != null;

  // "montantCible" field.
  double? _montantCible;
  double get montantCible => _montantCible ?? 0.0;
  bool hasMontantCible() => _montantCible != null;

  // "dateDebut" field.
  DateTime? _dateDebut;
  DateTime? get dateDebut => _dateDebut;
  bool hasDateDebut() => _dateDebut != null;

  void _initializeFields() {
    _idUser = snapshotData['idUser'] as String?;
    _nom = snapshotData['nom'] as String?;
    _montantInitial = castToType<double>(snapshotData['montantInitial']);
    _montantActuel = castToType<double>(snapshotData['montantActuel']);
    _montantCible = castToType<double>(snapshotData['montantCible']);
    _dateDebut = snapshotData['dateDebut'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('investissements');

  static Stream<InvestissementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvestissementsRecord.fromSnapshot(s));

  static Future<InvestissementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvestissementsRecord.fromSnapshot(s));

  static InvestissementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvestissementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvestissementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvestissementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvestissementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvestissementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvestissementsRecordData({
  String? idUser,
  String? nom,
  double? montantInitial,
  double? montantActuel,
  double? montantCible,
  DateTime? dateDebut,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idUser': idUser,
      'nom': nom,
      'montantInitial': montantInitial,
      'montantActuel': montantActuel,
      'montantCible': montantCible,
      'dateDebut': dateDebut,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvestissementsRecordDocumentEquality
    implements Equality<InvestissementsRecord> {
  const InvestissementsRecordDocumentEquality();

  @override
  bool equals(InvestissementsRecord? e1, InvestissementsRecord? e2) {
    return e1?.idUser == e2?.idUser &&
        e1?.nom == e2?.nom &&
        e1?.montantInitial == e2?.montantInitial &&
        e1?.montantActuel == e2?.montantActuel &&
        e1?.montantCible == e2?.montantCible &&
        e1?.dateDebut == e2?.dateDebut;
  }

  @override
  int hash(InvestissementsRecord? e) => const ListEquality().hash([
        e?.idUser,
        e?.nom,
        e?.montantInitial,
        e?.montantActuel,
        e?.montantCible,
        e?.dateDebut
      ]);

  @override
  bool isValidKey(Object? o) => o is InvestissementsRecord;
}
