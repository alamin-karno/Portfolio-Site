import 'package:cv_site/components/app_bar_txt.dart';
import 'package:cv_site/providers/screen_change_state.dart';
import 'package:cv_site/screens/bolg_ui_screen.dart';
import 'package:cv_site/screens/contact_ui_screen.dart';
import 'package:cv_site/screens/profile_ui_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: AppBarText(),
      ),
      body: Consumer<ScreenChangeState>(
        builder: (context, screenValue, child) {
          if(screenValue.value == 0) {
            return Center(
              child: ProfileUiScreen(),
            );
          }
          else if(screenValue.value == 1) {
            return Center(
              child: BlogUiScreen(),
            );
          }
          else{
            return Center(
              child: ContactUiScreen(),
            );
          }
        },
      ),
    );
  }
}
