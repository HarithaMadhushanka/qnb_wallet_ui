import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Function backButtonNavigation;

  CustomAppBar({this.title, this.backButtonNavigation})
      : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          backButtonNavigation();
        },
        child: Row(
          children: [
            Image(
              image: AssetImage('images/back.png'),
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'Back',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.041,
              ),
            ),
          ],
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
