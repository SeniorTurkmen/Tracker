import 'package:Tracker/components/util/get_delivery_status.dart';
import 'package:Tracker/components/util/get_student_status.dart';
import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/controllers/driver_home/driver_home_controller.dart';
import 'package:Tracker/models/data_model/user_data_model.dart';
import 'package:Tracker/models/driver_home/driver_home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentDetailView extends StatelessWidget {
  static const routeName = "/student-detail";
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments;

    Student student = routeArgs;
    DriverHomeController viewController = DriverHomeController();
    return ChangeNotifierProvider<DriverHomeModel>(
      create: (ctx) => DriverHomeModel.instance(),
      child: Consumer<DriverHomeModel>(
        builder: (ctx, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Student"),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              // Behind Body Section
              body: Container(
                  color: Colors.white,
                  height: double.infinity,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 75,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                SizeConfig.widthMultiplier * 10),
                            topRight: Radius.circular(
                                SizeConfig.widthMultiplier * 10)),
                        color: Colors.grey.withOpacity(.1)),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 6,
                          horizontal: SizeConfig.widthMultiplier * 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Student Name Section
                          Text(
                            student.name + " " + student.surName,
                            style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 3,
                                fontWeight: FontWeight.w600),
                          ),
                          // Parents Section
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Parent",
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2.5,
                                      fontWeight: FontWeight.w800),
                                ),
                                // Parent Informations Section
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      student.parent.name +
                                          " " +
                                          student.parent.surName,
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 3,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      student.parent.mail,
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2.3,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      student.parent.phone,
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2.3,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      student.parent.adress,
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2.3,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // Status Section
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2.5,
                                      fontWeight: FontWeight.w800),
                                ),
                                // Student Status Section
                                Text(
                                  getStatus(student.status),
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2.5,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          //Delivery Section
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Delivery Status",
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2.5,
                                      fontWeight: FontWeight.w800),
                                ),
                                // Student delivery Status Section
                                Text(
                                  getDeliveryStatus(student.deliveryStatus),
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2.5,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )));
        },
      ),
    );
  }
}
