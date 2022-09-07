import 'package:flutter/material.dart';

class LogoTinder extends StatelessWidget {
  const LogoTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      child: Image.asset(
        'assets/images/logo_tinder.png',
      ),
    );
  }
}