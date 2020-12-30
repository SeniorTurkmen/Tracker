import 'package:flutter/material.dart';

enum DriverHomeModelStatus {
  Ended,
  Loading,
  Error,
}

class DriverHomeModel extends ChangeNotifier {
  DriverHomeModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  DriverHomeModelStatus get status => _status;

  DriverHomeModel();

  DriverHomeModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }
}