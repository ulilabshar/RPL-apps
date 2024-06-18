import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProduct2Record extends FirestoreRecord {
  CartProduct2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  // "harga" field.
  int? _harga;
  int get harga => _harga ?? 0;
  bool hasHarga() => _harga != null;

  void _initializeFields() {
    _nama = snapshotData['nama'] as String?;
    _gambar = snapshotData['gambar'] as String?;
    _deskripsi = snapshotData['deskripsi'] as String?;
    _harga = castToType<int>(snapshotData['harga']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart-product2');

  static Stream<CartProduct2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartProduct2Record.fromSnapshot(s));

  static Future<CartProduct2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartProduct2Record.fromSnapshot(s));

  static CartProduct2Record fromSnapshot(DocumentSnapshot snapshot) =>
      CartProduct2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartProduct2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartProduct2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartProduct2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartProduct2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartProduct2RecordData({
  String? nama,
  String? gambar,
  String? deskripsi,
  int? harga,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama': nama,
      'gambar': gambar,
      'deskripsi': deskripsi,
      'harga': harga,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartProduct2RecordDocumentEquality
    implements Equality<CartProduct2Record> {
  const CartProduct2RecordDocumentEquality();

  @override
  bool equals(CartProduct2Record? e1, CartProduct2Record? e2) {
    return e1?.nama == e2?.nama &&
        e1?.gambar == e2?.gambar &&
        e1?.deskripsi == e2?.deskripsi &&
        e1?.harga == e2?.harga;
  }

  @override
  int hash(CartProduct2Record? e) =>
      const ListEquality().hash([e?.nama, e?.gambar, e?.deskripsi, e?.harga]);

  @override
  bool isValidKey(Object? o) => o is CartProduct2Record;
}
