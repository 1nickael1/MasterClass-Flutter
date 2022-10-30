import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/money_page.dart';

main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Money(),
    );
  }
}
