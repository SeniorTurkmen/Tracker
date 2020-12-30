import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/views/driver_home/components/decoration.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: SizeConfig.heightMultiplier * 4,
        width: SizeConfig.widthMultiplier * 5,
        padding: EdgeInsets.all(SizeConfig.heightMultiplier * 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: SizeConfig.widthMultiplier * 60,
                  decoration: getDecoration(color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Student Id or read the qr code",
                        filled: true,
                        fillColor: Colors.white,
                        alignLabelWithHint: false),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.all(SizeConfig.imagesSizeMultiplier * 3),
                    height: SizeConfig.heightMultiplier * 6,
                    width: SizeConfig.heightMultiplier * 6,
                    decoration: getDecoration(color: Colors.white),
                    child: Image.asset("assets/img/qr.png"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            GestureDetector(
              child: Container(
                  decoration:
                      getDecoration(color: Theme.of(context).buttonColor),
                  alignment: Alignment.center,
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 70,
                  child: Text(
                    "Scan the Student",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
          ],
        ),
      ),
    );
  }
}