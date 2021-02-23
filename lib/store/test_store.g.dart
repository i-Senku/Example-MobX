// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TestStore on _TestStoreBase, Store {
  final _$mesajAtom = Atom(name: '_TestStoreBase.mesaj');

  @override
  String get mesaj {
    _$mesajAtom.reportRead();
    return super.mesaj;
  }

  @override
  set mesaj(String value) {
    _$mesajAtom.reportWrite(value, super.mesaj, () {
      super.mesaj = value;
    });
  }

  final _$sayiAtom = Atom(name: '_TestStoreBase.sayi');

  @override
  int get sayi {
    _$sayiAtom.reportRead();
    return super.sayi;
  }

  @override
  set sayi(int value) {
    _$sayiAtom.reportWrite(value, super.sayi, () {
      super.sayi = value;
    });
  }

  final _$_TestStoreBaseActionController =
      ActionController(name: '_TestStoreBase');

  @override
  dynamic arttir() {
    final _$actionInfo = _$_TestStoreBaseActionController.startAction(
        name: '_TestStoreBase.arttir');
    try {
      return super.arttir();
    } finally {
      _$_TestStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic azalt() {
    final _$actionInfo = _$_TestStoreBaseActionController.startAction(
        name: '_TestStoreBase.azalt');
    try {
      return super.azalt();
    } finally {
      _$_TestStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mesaj: ${mesaj},
sayi: ${sayi}
    ''';
  }
}
