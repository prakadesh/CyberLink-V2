import 'dart:async';

import 'package:flutter/material.dart';
class hometrans extends StatefulWidget {
  const hometrans({super.key});

  @override
  State<hometrans> createState() => _homeState();
}


class _homeState extends State<hometrans> {
  bool showOrangePage = true;
  @override
  initState(){
    super.initState();
    Timer(Duration(seconds : 1), () {
      setState(() {
        showOrangePage = false;
        Navigator.pushReplacementNamed(context, '/makecomplaint');

      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(seconds : 1),
      child: showOrangePage ? buildOrangePage() : SizedBox.shrink()),
    );

  }
  Widget buildOrangePage() {
    return Container(
      key: ValueKey('Orange Page'),
      color: Color(0xFF23303B),
      child: Center(
        child: Text(
          'Welcome \n Arlo Mahardyan',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }

}
