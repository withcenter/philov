import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _defaultImagePath =
      'https://i.picsum.photos/id/292/300/300.jpg?hmac=j0Jbm_zVjpT5HJ7nBl7_wZIn2Ttqi34CzI0PyuFYnKw';
  String get defaultImagePath => _defaultImagePath;
  set defaultImagePath(String _value) {
    _defaultImagePath = _value;
  }

  String _anonymousMaleUrl =
      'https://firebasestorage.googleapis.com/v0/b/withcenter-kmeet.appspot.com/o/assets%2Fimages%2Fmale.jpg?alt=media&token=0ddc4469-6968-481d-a133-3bfc941e9496';
  String get anonymousMaleUrl => _anonymousMaleUrl;
  set anonymousMaleUrl(String _value) {
    _anonymousMaleUrl = _value;
  }

  String _anonymousFemaleUrl =
      'https://firebasestorage.googleapis.com/v0/b/withcenter-kmeet.appspot.com/o/assets%2Fimages%2Ffemale.jpg?alt=media&token=892c0854-63de-4e81-a268-b454fe82286e';
  String get anonymousFemaleUrl => _anonymousFemaleUrl;
  set anonymousFemaleUrl(String _value) {
    _anonymousFemaleUrl = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
