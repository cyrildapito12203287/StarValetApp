import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cardnumber" field.
  String? _cardnumber;
  String get cardnumber => _cardnumber ?? '';
  bool hasCardnumber() => _cardnumber != null;

  // "expiry" field.
  String? _expiry;
  String get expiry => _expiry ?? '';
  bool hasExpiry() => _expiry != null;

  // "nameoncard" field.
  String? _nameoncard;
  String get nameoncard => _nameoncard ?? '';
  bool hasNameoncard() => _nameoncard != null;

  // "security" field.
  int? _security;
  int get security => _security ?? 0;
  bool hasSecurity() => _security != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _cardnumber = snapshotData['cardnumber'] as String?;
    _expiry = snapshotData['expiry'] as String?;
    _nameoncard = snapshotData['nameoncard'] as String?;
    _security = castToType<int>(snapshotData['security']);
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  String? cardnumber,
  String? expiry,
  String? nameoncard,
  int? security,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cardnumber': cardnumber,
      'expiry': expiry,
      'nameoncard': nameoncard,
      'security': security,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.cardnumber == e2?.cardnumber &&
        e1?.expiry == e2?.expiry &&
        e1?.nameoncard == e2?.nameoncard &&
        e1?.security == e2?.security &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality()
      .hash([e?.cardnumber, e?.expiry, e?.nameoncard, e?.security, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
