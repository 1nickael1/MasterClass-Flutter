import 'package:flutter/material.dart';

class ButtonTinder extends StatelessWidget {
  const ButtonTinder({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
              border: Border.all(color: Colors.white)),
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        Positioned(
          top: 18.0,
          left: 15,
          child: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
