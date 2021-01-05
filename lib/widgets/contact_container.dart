import 'package:flutter/material.dart';

class ContactDetailsContainer extends StatelessWidget {
  final String contactOptionText;
  final IconData icon;
  final String text2;
  final Color color;

  const ContactDetailsContainer({Key key, @required this.contactOptionText, @required this.icon, @required this.text2, @required this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.fromLTRB(20, 0, 15, 10),
          child: Icon(
            icon,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                contactOptionText, style: TextStyle(
              fontSize: 16,
            ),
            ),
            Text(
                text2, style: TextStyle(
              fontSize: 16,
            ),
            ),
          ],
        ),
      ],
    );
  }
}
