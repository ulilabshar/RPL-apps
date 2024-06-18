import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProduct1Record extends FirestoreRecord {
  CartProduct1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "harga" field.
  int? _harga;
  int get harga => _harga ?? 0;
  bool hasHarga() => _harga != null;

  void _initializeFields() {
    _deskripsi = snapshotData['deskripsi'] as String?;
    _gambar = snapshotData['gambar'] as String?;
    _nama = snapshotData['nama'] as String?;
    _harga = castToType<int>(snapshotData['harga']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart-product1');

  static Stream<CartProduct1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartProduct1Record.fromSnapshot(s));

  static Future<CartProduct1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartProduct1Record.fromSnapshot(s));

  static CartProduct1Record fromSnapshot(DocumentSnapshot snapshot) =>
      CartProduct1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartProduct1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartProduct1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartProduct1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartProduct1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartProduct1RecordData({
  String? deskripsi,
  String? gambar,
  String? nama,
  int? harga,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deskripsi': deskripsi,
      'gambar': gambar,
      'nama': nama,
      'harga': harga,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartProduct1RecordDocumentEquality
    implements Equality<CartProduct1Record> {
  const CartProduct1RecordDocumentEquality();

  @override
  bool equals(CartProduct1Record? e1, CartProduct1Record? e2) {
    return e1?.deskripsi == e2?.deskripsi &&
        e1?.gambar == e2?.gambar &&
        e1?.nama == e2?.nama &&
        e1?.harga == e2?.harga;
  }

  @override
  int hash(CartProduct1Record? e) =>
      const ListEquality().hash([e?.deskripsi, e?.gambar, e?.nama, e?.harga]);

  @override
  bool isValidKey(Object? o) => o is CartProduct1Record;
}
