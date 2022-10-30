import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/tinder_page.dart';

class ButtonSignin extends StatelessWidget {
  const ButtonSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TinderPage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: RichText(
          text: const TextSpan(
            text: 'Already have an account? ',
            style: TextStyle(color: Colors.white),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign In',
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
