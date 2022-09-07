import 'package:flutter/material.dart';

import 'components/bottom_singin.dart';
import 'components/logo_tinder.dart';
import 'components/texto_abaixo_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;

    print('Largura: ${width} - Altura: ${heigth}');


    return SafeArea(
      child: Row(
        children: [
          Center(
            child: Container(
              width: width,
              height: heigth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade400,
                    Colors.pink,
                    Colors.pinkAccent.shade400,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoTinder(),
                  const TextoAbaixoLogo(),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                  ),
                  const BottomSingIn(
                      label: "SIGN IN WITH APPLE", icone: Icons.apple),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                  ),
                  const BottomSingIn(
                      label: "SIGN IN WITH FACEBOOK", icone: Icons.facebook),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                  ),
                  const BottomSingIn(
                      label: "SIGN IN WITH PHONE NUMBER", icone: Icons.message),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
