import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/views/driver_home/driver_home_view.dart';
import 'package:Tracker/views/driver_tabs/driver_tabs.dart';
import 'package:after_init/after_init.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterInitMixin<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DriverTabs()),
      );
    });
  }

/*
Afterinit package adds didInitState method which is called after initState and before Widget build just for once.
This will be a good place to load states and shared prefs.
 */

  @override
  void didInitState() {
    /*
    FoodProvider foodProvider = Provider.of<FoodProvider>(context);
    //foodProvider.initFoodList();
    foodProvider.loadFavoriteFoods();

    ApiService service = ApiService(context: context);
    service.takeData('pizzas');
    service.takeData('salads');
    service.takeData('drinks');*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.75 * SizeConfig.heightMultiplier,
            ),
            Container(
              height: 43.19 * SizeConfig.heightMultiplier,
              width: 93.45 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
              child: Center(
                child: Image.asset("assets/img/bus.png"),
              ),
            ),
            SizedBox(
              height: 3.35 * SizeConfig.heightMultiplier,
            ),
            Text(
              'Safety way to follow your child',
              style: GoogleFonts.titilliumWeb(
                textStyle: TextStyle(
                    color: Colors.green[800],
                    fontSize: 2.23 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16.75 * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'version',
                  style: GoogleFonts.titilliumWeb(
                    textStyle: TextStyle(
                        color: Colors.green[800],
                        fontSize: 1.67 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  ' 0.0.01',
                  style: GoogleFonts.titilliumWeb(
                    textStyle: TextStyle(
                        color: Colors.green[800],
                        fontSize: 1.67 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
