import 'package:cv_site/utils/constant_value.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class AddressDesign extends StatelessWidget {
  const AddressDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Address:',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('Gazipur, Dhaka, Bangladesh'),
              leading: FaIcon(FontAwesomeIcons.addressCard,
                color: Colors.blueAccent,),
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('+8801621893919'),
              leading: FaIcon(FontAwesomeIcons.phone,
                color: Colors.blueAccent,),
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('amin15-1951@diu.edu.bd'),
              leading: FaIcon(FontAwesomeIcons.voicemail,
                color: Colors.blueAccent,),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () => html.window.open(mySiteLink, 'new tab'),
              child: ListTile(
                title: Text('https://sites.google.com/diu.edu.bd/alaminkarno/'),
                leading: FaIcon(FontAwesomeIcons.globeAsia,
                  color: Colors.blueAccent,),
              ),
            ),
          ],
        )
      ),
    );
  }
}
