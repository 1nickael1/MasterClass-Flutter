import 'package:flutter/material.dart';

class LogoTinder extends StatelessWidget {
  const LogoTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/tinder_logo.png', width: 35),
          const Text(
            ' tinder',
            style: TextStyle(
                fontFamily: 'Tinder', color: Colors.white, fontSize: 50),
          ),
        ],
      ),
    );
  }
}
