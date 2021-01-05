import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qnb_wallet_ui/widgets/appbar_widget.dart';
import 'package:qnb_wallet_ui/widgets/contact_container.dart';

class CustomerCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Customer care'),
      body: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/background.jpg'), //Add the Image
            ),
            SizedBox(
              height: 60,
            ),
            ContactDetailsContainer(
              icon: Icons.call,
              contactOptionText: 'Contact Us',
              text2: '011-2902100',
              color: Color(0xff01AED6),
            ),
            Divider(
              thickness: 1,
            ),
            ContactDetailsContainer(
              icon: Icons.email,
              contactOptionText: 'Email Us',
              text2: 'support@qnb.com',
              color: Color(0xffFF4900),
            ),
          ],
        ),
      ),
    );
  }
}
