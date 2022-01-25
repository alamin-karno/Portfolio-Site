import 'package:cv_site/providers/screen_change_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(40, 5, 40, 0),
        child: Consumer<ScreenChangeState>(
          builder: (context, screenValue, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: ()=> context.read<ScreenChangeState>().changeScreen(0),
                  child: Row(
                    children: [
                      Text(
                        'Learn With',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Alamin Karno',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ScreenChangeState>().changeScreen(0);
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: screenValue.value == 0
                            ? BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.blueAccent, width: 3.0),
                                ),
                              )
                            : null,
                        child: Text(
                          'Home',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () =>
                          context.read<ScreenChangeState>().changeScreen(1),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: screenValue.value == 1
                            ? BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.blueAccent, width: 3.0),
                                ),
                              )
                            : null,
                        child: Text(
                          'Video',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () =>
                          context.read<ScreenChangeState>().changeScreen(2),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: screenValue.value == 2
                            ? BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.blueAccent, width: 3.0),
                                ),
                              )
                            : null,
                        child: Text(
                          'Contact',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ));
  }
}
