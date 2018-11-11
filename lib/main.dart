import 'package:flutter/material.dart';
import './screens/home.dart';

// the main method is the entry point of your flutter app
// void main() {
//   runApp(Main());
// }

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title goes here...'),
        ),
        body: Home()
      )
    );
  }
}
