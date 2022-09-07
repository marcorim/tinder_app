import 'package:flutter/material.dart';

class BottomSingIn extends StatelessWidget {
  final String label;
  final IconData icone;

  const BottomSingIn({Key? key, required this.label, required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _heigth = MediaQuery.of(context).size.height;

    double _responsiveWidth() {
      if (_width <= 500) {
        return 367;
      }else if (_width > 500 && _width < 922) {
        return 367 + (_width - 500);
      }

      return 922;
    }

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border(
          bottom: BorderSide(
            color: Colors.white,
          ),
          left: BorderSide(
            color: Colors.white,
          ),
          right: BorderSide(
            color: Colors.white,
          ),
          top: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      width: _responsiveWidth() ,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            leading: Icon(
              icone,
              color: Colors.white,
            ),
            title: Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            trailing: const Text(''),
          ),
        ],
      ),
    );
  }
}
