import 'dart:math';

import 'package:Tracker/components/layout/appbar.dart';
import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/models/data_model/parent_data_model.dart';
import 'package:Tracker/models/data_model/user_data_model.dart';
import 'package:Tracker/views/driver_home/layouts/header.dart';
import 'package:Tracker/views/driver_home/layouts/student_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
// import model
import 'package:Tracker/models/driver_home/driver_home_model.dart';
// import controller
import 'package:Tracker/controllers/driver_home/driver_home_controller.dart';

class DriverHomeView extends StatelessWidget {
  static const routeName = "/driver-home";
  @override
  Widget build(BuildContext context) {
    DriverHomeController viewController = DriverHomeController();
    viewController.setter(context);
    return ChangeNotifierProvider<DriverHomeModel>(
      create: (context) => DriverHomeModel.instance(),
      child: Consumer<DriverHomeModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                //Header Section
                SliverAppBar(
                  centerTitle: true,
                  title: Text("DriverHome"),
                  pinned: true,
                  stretch: false,
                  elevation: SizeConfig.textMultiplier * .56,
                  forceElevated: true,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(SizeConfig.textMultiplier * 10),
                          bottomRight:
                              Radius.circular(SizeConfig.textMultiplier * 10))),
                  expandedHeight: SizeConfig.heightMultiplier * 40,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Header(),
                  ),
                  bottom: PreferredSize(
                    preferredSize:
                        Size.fromHeight(SizeConfig.heightMultiplier * 4),
                    child: Container(),
                  ),
                ),
                //Student List Section
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext ctx, int index) => Expanded(
                            child: StudentCard(
                                student: viewModel.studentData[index])),
                        childCount: students.length))
              ],
            ),
          );
        },
      ),
    );
  }
}
