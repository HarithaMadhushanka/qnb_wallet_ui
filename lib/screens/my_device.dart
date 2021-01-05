import 'package:flutter/material.dart';
import 'package:qnb_wallet_ui/widgets/appbar_widget.dart';
import 'package:qnb_wallet_ui/widgets/custom_raised_button.dart';

class MyDevice extends StatefulWidget {
  @override
  _MyDeviceState createState() => _MyDeviceState();
}

class _MyDeviceState extends State<MyDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Device',
        backButtonNavigation: () {}, // Back Button Navigation
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                child: Image(
                  image: AssetImage('images/device_img.png'),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(0xff01CC57),
                  ),
                  child: Text(
                    'Primary',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UUID',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'sef6846s84f-4568-4f5s-44f5s3df4',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Device Type',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'iPhone',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 20, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.grey.withOpacity(0.6),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'The login session in the device will be\nclosed if the "revoke" button us clicked. It\nwill require to enter the SMS PIN again if\nyou are login to the same device.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.036,
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                CustomRaisedButton(
                  borderColor: Color(0xffFF0F1A),
                  textColor: Color(0xffffffff),
                  buttonText: 'Revoke',
                  buttonColor: Color(0xffFF0F1A),
                  buttonPressFunction: () {}, //Function onButtonPress
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                CustomRaisedButton(
                  borderColor: Color(0xff871f78),
                  textColor: Color(0xff871f78),
                  buttonText: 'Cancel',
                  buttonColor: Colors.white,
                  buttonPressFunction: () {}, //Function onButtonPress
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
