import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiclesRecord extends FirestoreRecord {
  VehiclesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "plate_number" field.
  String? _plateNumber;
  String get plateNumber => _plateNumber ?? '';
  bool hasPlateNumber() => _plateNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _color = snapshotData['color'] as String?;
    _model = snapshotData['model'] as String?;
    _plateNumber = snapshotData['plate_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicles');

  static Stream<VehiclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiclesRecord.fromSnapshot(s));

  static Future<VehiclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiclesRecord.fromSnapshot(s));

  static VehiclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiclesRecordData({
  String? color,
  String? model,
  String? plateNumber,
  String? uid,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'color': color,
      'model': model,
      'plate_number': plateNumber,
      'uid': uid,
      'isActive': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiclesRecordDocumentEquality implements Equality<VehiclesRecord> {
  const VehiclesRecordDocumentEquality();

  @override
  bool equals(VehiclesRecord? e1, VehiclesRecord? e2) {
    return e1?.color == e2?.color &&
        e1?.model == e2?.model &&
        e1?.plateNumber == e2?.plateNumber &&
        e1?.uid == e2?.uid &&
        e1?.isActive == e2?.isActive;
  }

  @override
  int hash(VehiclesRecord? e) => const ListEquality()
      .hash([e?.color, e?.model, e?.plateNumber, e?.uid, e?.isActive]);

  @override
  bool isValidKey(Object? o) => o is VehiclesRecord;
}
