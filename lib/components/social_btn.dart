import 'package:cv_site/utils/constant_value.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: (){
                html.window.open(gitHubLink, 'new tab');
              },
              child: ListTile(
                title: Text('Github',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                leading: FaIcon(FontAwesomeIcons.githubSquare,
                  color: Colors.white,),
              ),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),),),
          ),
          SizedBox(width: 10.0,),
          Flexible(
            child: ElevatedButton(
              onPressed: (){
                html.window.open(linkedInLink, 'new tab');
              },
              child: ListTile(
                title: Text('LinkedIn',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                leading: FaIcon(FontAwesomeIcons.linkedin,
                  color: Colors.white,),
              ),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),),),
          ),
          SizedBox(width: 10.0,),
          Flexible(
            child: ElevatedButton(
              onPressed: (){
                html.window.open(twitterLink, 'new tab');
              },
              child: ListTile(
                title: Text('Twitter',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                leading: FaIcon(FontAwesomeIcons.twitterSquare,
                  color: Colors.white,),
              ),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),),),
          ),
          SizedBox(width: 10.0,),
          Flexible(
            child: ElevatedButton(
              onPressed: (){
                html.window.open(facebookLink, 'new tab');
              },
              child: ListTile(
                title: Text('Facebook',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                leading: FaIcon(FontAwesomeIcons.facebookSquare,
                  color: Colors.white,),
              ),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),),),
          ),
        ],
      ),
    );
  }
}
