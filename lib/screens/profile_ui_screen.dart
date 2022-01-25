import 'package:cv_site/components/social_btn.dart';
import 'package:cv_site/utils/constant_value.dart';
import 'package:flutter/material.dart';

class ProfileUiScreen extends StatelessWidget {
  const ProfileUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 10.0,
          clipBehavior: Clip.antiAlias,
          child: Image.network(myImageLink,
            fit: BoxFit.cover,
            height: 250.0,),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text('Md. Al-Amin',
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),),
        SizedBox(
          height: 15.0,
        ),
        Text('Mobile Application Developer (Native & Flutter)',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
          ),),
        SizedBox(
          height: 30.0,
        ),
        Center(
          child: SocialButton(),
        )
      ],
    );
  }
}
