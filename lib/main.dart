import 'package:Tracker/components/util/color_util.dart';
import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/models/driver_home/driver_home_model.dart';
import 'package:Tracker/models/login/login_model.dart';
import 'package:Tracker/views/driver_home/driver_home_view.dart';
import 'package:Tracker/views/splash/splash_view.dart';
import 'package:Tracker/views/student_detail/student_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => LoginModel(),
                ),
                ChangeNotifierProvider(
                  create: (context) => DriverHomeModel(),
                ),
              ],
              child: MaterialApp(
                theme: ThemeData(
                    primaryColor: HexColor(hexColor: "FFD64D"),
                    buttonColor: HexColor(hexColor: "000000")),
                debugShowCheckedModeBanner: false,
                home: SplashScreen(),
              ),
            );
          },
        );
      },
    );
  }
}
