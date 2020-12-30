import 'package:Tracker/components/layout/appbar.dart';
import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/views/driver_home/layouts/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:Tracker/models/driver_home/driver_home_model.dart';
// import controller
import 'package:Tracker/controllers/driver_home/driver_home_controller.dart';

class DriverHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DriverHomeController viewController = DriverHomeController();
    return ChangeNotifierProvider<DriverHomeModel>(
      create: (context) => DriverHomeModel.instance(),
      child: Consumer<DriverHomeModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
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
                SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    height: SizeConfig.heightMultiplier * 150,
                  )
                ]))
              ],
            ),
          );
        },
      ),
    );
  }
}
