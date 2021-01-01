import 'package:Tracker/components/util/screen_util.dart';
import 'package:Tracker/components/layout/decoration.dart';
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

            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier * 1),
              child: Text("Enter the user number or search the qr code"),
            ),
            // Text Field and qr code scanner
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // text Field
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
                // QR code scann button
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
            // Search field button
            GestureDetector(
              child: Container(
                  decoration:
                      getDecoration(color: Theme.of(context).buttonColor),
                  alignment: Alignment.center,
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 70,
                  child: Text(
                    "Search the Student",
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
