import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {

  String link;
  double height;

  CardDesign({required this.height,required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.network(
          link,
          fit: BoxFit.contain,
          height: height,
        ),
      ),
    );
  }
}
