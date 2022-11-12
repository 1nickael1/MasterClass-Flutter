import 'package:flutter/material.dart';

class Desafio1 extends StatelessWidget {
  const Desafio1({super.key});

  @override
  Widget build(BuildContext context) {
    var actualWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        child: actualWidth >= 600
            ? Row(
                children: [
                  Container(
                    color: Colors.black,
                    width: actualWidth * 0.5,
                  ),
                  Login()
                ],
              )
            : Login(),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Container(
            width: 400,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 81, 45, 168),
                    Color.fromARGB(255, 41, 98, 255)
                  ]),
            ),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: const Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
            ),
          ),
          Container(
            width: 400,
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.white,
          ),
        ],
      ),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          right: 100,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ))
    ]);
  }
}
