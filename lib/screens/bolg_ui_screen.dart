import 'package:cv_site/components/card_design.dart';
import 'package:cv_site/utils/constant_value.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class BlogUiScreen extends StatelessWidget {
  const BlogUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Mobile Application Development World',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  child: CardDesign(height: 200.0, link: androidImage),
                  onTap: () => html.window.open(androidVideoLink, 'new tab'),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Expanded(
                child: GestureDetector(
                  child: CardDesign(height: 200.0, link: dartImage),
                  onTap: () => html.window.open(dartVideoLink, 'new tab'),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Expanded(
                child: GestureDetector(
                  child: CardDesign(height: 200.0, link: flutterImage),
                  onTap: () => html.window.open(flutterVideoLink, 'new tab'),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Expanded(
                child: GestureDetector(
                  child: CardDesign(height: 200.0, link: gitAndGitHubImage),
                  onTap: () => html.window.open(gitVideoLink, 'new tab'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
