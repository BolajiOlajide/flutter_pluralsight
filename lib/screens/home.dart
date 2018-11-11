import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurple,
        child: Center(
          child: Text(
              // the center widget centers another widget both horizontally & vertically
              sayhello(),
              textDirection: TextDirection
                  .ltr, // for every text, it's important to always set the textDirection
              style: TextStyle(color: Colors.white, fontSize: 36.0)),
        ));
  }

  String sayhello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;

    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();

    if (hour < 12) {
      hello = "Good morning!";
    } else if (hour < 18) {
      hello = "Good afternoon!";
    } else {
      hello = "Good evening";
    }
    return hello + "\nThe time is " + hour.toString() + ":" + minutes;
  }
}
