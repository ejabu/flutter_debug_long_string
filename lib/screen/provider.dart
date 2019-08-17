import 'package:flutter/material.dart';

class FilePath {
    String longString;
  String _longString;

  FilePath() {
    this.longString = generateLongString();
    this._longString = generateLongString();
  }

  get privateLongString => _longString;

  String generateLongString() {
    String temp = '';
    for (var i = 0; i < 1000; i++) {
      temp += '0123456789';
    }
    return temp += 'end';
  }
}

class SaleOrderProvider extends ChangeNotifier {
  String longString;
  String _longString;
  FilePath _file;

  SaleOrderProvider() {

    this.longString = generateLongString();
    this._longString = generateLongString();
    this._file = FilePath();
  }

  get privateLongString => _longString;

  String generateLongString() {
    String temp = '';
    for (var i = 0; i < 1000; i++) {
      temp += '0123456789';
    }
    return temp += 'end';
  }
}
