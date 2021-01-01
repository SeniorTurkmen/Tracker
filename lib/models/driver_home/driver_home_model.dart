import 'package:Tracker/models/data_model/parent_data_model.dart';
import 'package:flutter/material.dart';
import 'package:Tracker/models/data_model/user_data_model.dart';

enum DriverHomeModelStatus {
  Ended,
  Loading,
  Error,
}

List<Student> students = [
  Student(
      id: 340983564,
      name: "Jhon",
      surName: "Sawyer",
      deliveryStatus: DeliveryStatus.booth,
      status: Status.inBus,
      lastUpdate: DateTime.now(),
      parent: Parent(
          name: "Jeremy M",
          surName: "Sawyer",
          id: 000001,
          mail: "w8vooetvmnb@temporary-mail.net",
          adress: "1882  Wayback Lane, NY, ",
          phone: "917-400-2392")),
  Student(
      id: 465952248,
      name: "Harry",
      surName: "Henry",
      deliveryStatus: DeliveryStatus.booth,
      status: Status.inBus,
      lastUpdate: DateTime.now(),
      parent: Parent(
          name: "Sherwood J ",
          surName: "Henry",
          id: 000001,
          mail: "bs21vc7uvpr@temporary-mail.net",
          adress: "3041  Morris Street, Hobe Sound, FL",
          phone: "772-245-9231")),
  Student(
      id: 654871354,
      name: "George",
      surName: "Williams",
      deliveryStatus: DeliveryStatus.booth,
      status: Status.inBus,
      lastUpdate: DateTime.now(),
      parent: Parent(
          name: "Lorenzo L ",
          surName: "Williams",
          id: 000001,
          mail: "w8vooetvmnb@temporary-mail.net",
          adress: "1882  Wayback Lane, NY, ",
          phone: "917-400-2392")),
  Student(
      id: 198554451,
      name: "Clooi",
      surName: "Reagan",
      deliveryStatus: DeliveryStatus.booth,
      status: Status.inBus,
      lastUpdate: DateTime.now(),
      parent: Parent(
          name: "Danielle R ",
          surName: "Reagan",
          id: 000001,
          mail: "8t0nb79wx0w@temporary-mail.net",
          adress: "878  Overlook Drive, El Paso, TX",
          phone: "915-238-8304")),
];

class DriverHomeModel extends ChangeNotifier {
  DriverHomeModelStatus status = DriverHomeModelStatus.Loading;
  String _errorCode;
  String _errorMessage;
  List<Student> _studentData;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  List<Student> get studentData => _studentData;

  DriverHomeModel();

  DriverHomeModel.instance() {
    _studentData = students;
  }

  void getter() {
    status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }

  Future<void> setter() async {
    status = DriverHomeModelStatus.Loading;
    notifyListeners();

    status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    status = DriverHomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    status = DriverHomeModelStatus.Ended;
    notifyListeners();
  }
}
