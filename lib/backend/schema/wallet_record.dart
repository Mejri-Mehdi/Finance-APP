import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WalletRecord extends FirestoreRecord {
  WalletRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomWallet" field.
  String? _nomWallet;
  String get nomWallet => _nomWallet ?? '';
  bool hasNomWallet() => _nomWallet != null;

  // "soldeActuel" field.
  double? _soldeActuel;
  double get soldeActuel => _soldeActuel ?? 0.0;
  bool hasSoldeActuel() => _soldeActuel != null;

  // "budgetLimite" field.
  double? _budgetLimite;
  double get budgetLimite => _budgetLimite ?? 0.0;
  bool hasBudgetLimite() => _budgetLimite != null;

  // "depenseTotale" field.
  double? _depenseTotale;
  double get depenseTotale => _depenseTotale ?? 0.0;
  bool hasDepenseTotale() => _depenseTotale != null;

  // "revenuTotal" field.
  double? _revenuTotal;
  double get revenuTotal => _revenuTotal ?? 0.0;
  bool hasRevenuTotal() => _revenuTotal != null;

  // "objectifEpargne" field.
  double? _objectifEpargne;
  double get objectifEpargne => _objectifEpargne ?? 0.0;
  bool hasObjectifEpargne() => _objectifEpargne != null;

  // "soldeCalcule" field.
  double? _soldeCalcule;
  double get soldeCalcule => _soldeCalcule ?? 0.0;
  bool hasSoldeCalcule() => _soldeCalcule != null;

  // "texteRecu" field.
  String? _texteRecu;
  String get texteRecu => _texteRecu ?? '';
  bool hasTexteRecu() => _texteRecu != null;

  // "reculmage" field.
  String? _reculmage;
  String get reculmage => _reculmage ?? '';
  bool hasReculmage() => _reculmage != null;

  // "notif100Shown" field.
  bool? _notif100Shown;
  bool get notif100Shown => _notif100Shown ?? false;
  bool hasNotif100Shown() => _notif100Shown != null;

  // "notif90Shown" field.
  bool? _notif90Shown;
  bool get notif90Shown => _notif90Shown ?? false;
  bool hasNotif90Shown() => _notif90Shown != null;

  // "notif70Shown" field.
  bool? _notif70Shown;
  bool get notif70Shown => _notif70Shown ?? false;
  bool hasNotif70Shown() => _notif70Shown != null;

  // "notif50Shown" field.
  bool? _notif50Shown;
  bool get notif50Shown => _notif50Shown ?? false;
  bool hasNotif50Shown() => _notif50Shown != null;

  // "Transactions" field.
  List<DocumentReference>? _transactions;
  List<DocumentReference> get transactions => _transactions ?? const [];
  bool hasTransactions() => _transactions != null;

  void _initializeFields() {
    _nomWallet = snapshotData['nomWallet'] as String?;
    _soldeActuel = castToType<double>(snapshotData['soldeActuel']);
    _budgetLimite = castToType<double>(snapshotData['budgetLimite']);
    _depenseTotale = castToType<double>(snapshotData['depenseTotale']);
    _revenuTotal = castToType<double>(snapshotData['revenuTotal']);
    _objectifEpargne = castToType<double>(snapshotData['objectifEpargne']);
    _soldeCalcule = castToType<double>(snapshotData['soldeCalcule']);
    _texteRecu = snapshotData['texteRecu'] as String?;
    _reculmage = snapshotData['reculmage'] as String?;
    _notif100Shown = snapshotData['notif100Shown'] as bool?;
    _notif90Shown = snapshotData['notif90Shown'] as bool?;
    _notif70Shown = snapshotData['notif70Shown'] as bool?;
    _notif50Shown = snapshotData['notif50Shown'] as bool?;
    _transactions = getDataList(snapshotData['Transactions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Wallet');

  static Stream<WalletRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletRecord.fromSnapshot(s));

  static Future<WalletRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletRecord.fromSnapshot(s));

  static WalletRecord fromSnapshot(DocumentSnapshot snapshot) => WalletRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletRecordData({
  String? nomWallet,
  double? soldeActuel,
  double? budgetLimite,
  double? depenseTotale,
  double? revenuTotal,
  double? objectifEpargne,
  double? soldeCalcule,
  String? texteRecu,
  String? reculmage,
  bool? notif100Shown,
  bool? notif90Shown,
  bool? notif70Shown,
  bool? notif50Shown,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomWallet': nomWallet,
      'soldeActuel': soldeActuel,
      'budgetLimite': budgetLimite,
      'depenseTotale': depenseTotale,
      'revenuTotal': revenuTotal,
      'objectifEpargne': objectifEpargne,
      'soldeCalcule': soldeCalcule,
      'texteRecu': texteRecu,
      'reculmage': reculmage,
      'notif100Shown': notif100Shown,
      'notif90Shown': notif90Shown,
      'notif70Shown': notif70Shown,
      'notif50Shown': notif50Shown,
    }.withoutNulls,
  );

  return firestoreData;
}

class WalletRecordDocumentEquality implements Equality<WalletRecord> {
  const WalletRecordDocumentEquality();

  @override
  bool equals(WalletRecord? e1, WalletRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomWallet == e2?.nomWallet &&
        e1?.soldeActuel == e2?.soldeActuel &&
        e1?.budgetLimite == e2?.budgetLimite &&
        e1?.depenseTotale == e2?.depenseTotale &&
        e1?.revenuTotal == e2?.revenuTotal &&
        e1?.objectifEpargne == e2?.objectifEpargne &&
        e1?.soldeCalcule == e2?.soldeCalcule &&
        e1?.texteRecu == e2?.texteRecu &&
        e1?.reculmage == e2?.reculmage &&
        e1?.notif100Shown == e2?.notif100Shown &&
        e1?.notif90Shown == e2?.notif90Shown &&
        e1?.notif70Shown == e2?.notif70Shown &&
        e1?.notif50Shown == e2?.notif50Shown &&
        listEquality.equals(e1?.transactions, e2?.transactions);
  }

  @override
  int hash(WalletRecord? e) => const ListEquality().hash([
        e?.nomWallet,
        e?.soldeActuel,
        e?.budgetLimite,
        e?.depenseTotale,
        e?.revenuTotal,
        e?.objectifEpargne,
        e?.soldeCalcule,
        e?.texteRecu,
        e?.reculmage,
        e?.notif100Shown,
        e?.notif90Shown,
        e?.notif70Shown,
        e?.notif50Shown,
        e?.transactions
      ]);

  @override
  bool isValidKey(Object? o) => o is WalletRecord;
}
