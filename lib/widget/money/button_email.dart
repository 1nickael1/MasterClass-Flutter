import 'package:flutter/material.dart';

class ButtonEmail extends StatelessWidget {
  const ButtonEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xFF5E5BDC),
          borderRadius: BorderRadius.circular(10)),
      child: const Text(
        'Sign Up with Email ID',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
