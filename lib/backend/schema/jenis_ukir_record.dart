import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JenisUkirRecord extends FirestoreRecord {
  JenisUkirRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "harga" field.
  double? _harga;
  double get harga => _harga ?? 0.0;
  bool hasHarga() => _harga != null;

  void _initializeFields() {
    _nama = snapshotData['nama'] as String?;
    _harga = castToType<double>(snapshotData['harga']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jenis-ukir');

  static Stream<JenisUkirRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JenisUkirRecord.fromSnapshot(s));

  static Future<JenisUkirRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JenisUkirRecord.fromSnapshot(s));

  static JenisUkirRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JenisUkirRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JenisUkirRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JenisUkirRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JenisUkirRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JenisUkirRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJenisUkirRecordData({
  String? nama,
  double? harga,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama': nama,
      'harga': harga,
    }.withoutNulls,
  );

  return firestoreData;
}

class JenisUkirRecordDocumentEquality implements Equality<JenisUkirRecord> {
  const JenisUkirRecordDocumentEquality();

  @override
  bool equals(JenisUkirRecord? e1, JenisUkirRecord? e2) {
    return e1?.nama == e2?.nama && e1?.harga == e2?.harga;
  }

  @override
  int hash(JenisUkirRecord? e) =>
      const ListEquality().hash([e?.nama, e?.harga]);

  @override
  bool isValidKey(Object? o) => o is JenisUkirRecord;
}
