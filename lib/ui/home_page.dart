import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tick_tick/servo/theme_servo.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: [
          Text("Theme Data",
            style: TextStyle(
              fontSize:   30
            ),

              )
        ],
      ),
    );
  }

  _appbar(){
    return AppBar(
      leading: GestureDetector(
        onTap: (){
          ThemeServo().switchTheme();

        },
        child: Icon(Icons.nightlight_round,
        size: 20,),
      ),
      actions: [
        Icon(Icons.person,
        size: 20,),
        SizedBox(width: 20,),

      ],

    );
  }
}
