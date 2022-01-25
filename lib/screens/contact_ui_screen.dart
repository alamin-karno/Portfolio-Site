import 'package:cv_site/components/address_design.dart';
import 'package:flutter/material.dart';

class ContactUiScreen extends StatelessWidget {
  const ContactUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Contact',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        AddressDesign(),
      ],
    );
  }
}
