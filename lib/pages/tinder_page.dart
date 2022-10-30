import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/widget/tinder/button_tinder.dart';
import 'package:flutter_playground/widget/tinder/description_tinder.dart';
import 'package:flutter_playground/widget/tinder/logo_tinder.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 1],
                colors: [
                  Color(0xFFee7462),
                  Color(0xFFe94976),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    LogoTinder(),
                    DescriptionTinder(),
                  ],
                ),
                Column(
                  children: [
                    const ButtonTinder(
                        text: 'sign in with apple', icon: Icons.apple),
                    const ButtonTinder(
                        text: 'sign in with facebook', icon: Icons.facebook),
                    const ButtonTinder(
                        text: 'sign in with phone number',
                        icon: CupertinoIcons.chat_bubble_fill),
                    Container(
                      margin: const EdgeInsets.only(top: 50.0),
                      child: const Text(
                        'Trouble Signin In?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 10.0,
            top: 10.0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
