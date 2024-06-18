import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> value) {
    _cart = value;
  }

  void addToCart(DocumentReference value) {
    cart.add(value);
  }

  void removeFromCart(DocumentReference value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    cart.insert(index, value);
  }

  List<DocumentReference> _cart1 = [];
  List<DocumentReference> get cart1 => _cart1;
  set cart1(List<DocumentReference> value) {
    _cart1 = value;
  }

  void addToCart1(DocumentReference value) {
    cart1.add(value);
  }

  void removeFromCart1(DocumentReference value) {
    cart1.remove(value);
  }

  void removeAtIndexFromCart1(int index) {
    cart1.removeAt(index);
  }

  void updateCart1AtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart1[index] = updateFn(_cart1[index]);
  }

  void insertAtIndexInCart1(int index, DocumentReference value) {
    cart1.insert(index, value);
  }

  List<DocumentReference> _cart2 = [];
  List<DocumentReference> get cart2 => _cart2;
  set cart2(List<DocumentReference> value) {
    _cart2 = value;
  }

  void addToCart2(DocumentReference value) {
    cart2.add(value);
  }

  void removeFromCart2(DocumentReference value) {
    cart2.remove(value);
  }

  void removeAtIndexFromCart2(int index) {
    cart2.removeAt(index);
  }

  void updateCart2AtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart2[index] = updateFn(_cart2[index]);
  }

  void insertAtIndexInCart2(int index, DocumentReference value) {
    cart2.insert(index, value);
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
  }
}
