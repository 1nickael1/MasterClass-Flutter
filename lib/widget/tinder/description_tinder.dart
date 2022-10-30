import 'package:flutter/material.dart';

class DescriptionTinder extends StatelessWidget {
  const DescriptionTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50.0),
      width: MediaQuery.of(context).size.width * 0.8,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'By tapping Create Account or Sign In, you agree to our ',
          children: [
            TextSpan(
              text: 'Terms.',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            TextSpan(text: ' Learn how we process your data in our '),
            TextSpan(
              text: 'Privacy.',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            TextSpan(
              text: ' Policy.',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'Cookies Policy.',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
