import 'package:flutter/material.dart';

class TextoAbaixoLogo extends StatelessWidget {
  const TextoAbaixoLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 70, right: 70),
      child: const Text.rich(
        TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'By tapping Create Account or Sign In, you agree to our ',
            ),
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: '. Leanr how we process your data in our '),
            TextSpan(
              text: 'Privacy Policy ',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white,
              ),
            ),
            TextSpan(text: 'and '),
            TextSpan(
              text: 'Cookies Policy.',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}