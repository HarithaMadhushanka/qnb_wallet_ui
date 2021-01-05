import 'package:flutter/material.dart';
import 'package:qnb_wallet_ui/screens/my_device.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito',
        primaryColor: Color(0xffB30060),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyDevice(),
    );
  }
}
