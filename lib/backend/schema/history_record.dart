import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryRecord extends FirestoreRecord {
  HistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dateandtime" field.
  String? _dateandtime;
  String get dateandtime => _dateandtime ?? '';
  bool hasDateandtime() => _dateandtime != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "card" field.
  String? _card;
  String get card => _card ?? '';
  bool hasCard() => _card != null;

  // "vehicle" field.
  String? _vehicle;
  String get vehicle => _vehicle ?? '';
  bool hasVehicle() => _vehicle != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _dateandtime = snapshotData['dateandtime'] as String?;
    _address = snapshotData['address'] as String?;
    _card = snapshotData['card'] as String?;
    _vehicle = snapshotData['vehicle'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('history');

  static Stream<HistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryRecord.fromSnapshot(s));

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryRecord.fromSnapshot(s));

  static HistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryRecordData({
  String? dateandtime,
  String? address,
  String? card,
  String? vehicle,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dateandtime': dateandtime,
      'address': address,
      'card': card,
      'vehicle': vehicle,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryRecordDocumentEquality implements Equality<HistoryRecord> {
  const HistoryRecordDocumentEquality();

  @override
  bool equals(HistoryRecord? e1, HistoryRecord? e2) {
    return e1?.dateandtime == e2?.dateandtime &&
        e1?.address == e2?.address &&
        e1?.card == e2?.card &&
        e1?.vehicle == e2?.vehicle &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(HistoryRecord? e) => const ListEquality()
      .hash([e?.dateandtime, e?.address, e?.card, e?.vehicle, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is HistoryRecord;
}
