import 'package:cv_site/providers/screen_change_state.dart';
import 'package:cv_site/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScreenChangeState()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
        title: 'Learn With Alamin Karno',
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}



