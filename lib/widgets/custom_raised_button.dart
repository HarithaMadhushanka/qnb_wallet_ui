import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color borderColor;
  final Color textColor;
  final Function buttonPressFunction;

  const CustomRaisedButton({
    Key key,
    @required this.buttonText,
    @required this.buttonColor,
    @required this.textColor,
    this.borderColor,
    this.buttonPressFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
      child: RaisedButton(
        elevation: 0,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: borderColor),
        ),
        disabledColor: buttonColor,
        textColor: textColor,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          buttonPressFunction();
        },
      ),
    );
  }
}
