import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/shape.dart';

class AnimationImplicita extends StatefulWidget {
  const AnimationImplicita({super.key});

  @override
  State<AnimationImplicita> createState() => _AnimationImplicitaState();
}

class _AnimationImplicitaState extends State<AnimationImplicita> {
  var isCircle = true;
  final Duration duration = const Duration(milliseconds: 800);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AnimatedAlign(
          duration: duration,
          curve: Curves.easeInOut,
          alignment: isCircle ? Alignment.bottomRight : Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ShapeWidget(
              shape: isCircle
                  ? Circle(
                      100,
                      100,
                      BorderRadius.circular(100),
                      Colors.blue,
                    )
                  : Retangle(
                      200,
                      100,
                      BorderRadius.circular(4),
                      Colors.black,
                    ),
              onTap: () {
                setState(() {
                  isCircle = !isCircle;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ShapeWidget extends StatelessWidget {
  final Shape shape;
  final void Function() onTap;
  final Duration duration = const Duration(milliseconds: 800);

  const ShapeWidget({super.key, required this.shape, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: duration,
        curve: Curves.easeInOut,
        width: shape.width,
        height: shape.height,
        decoration: BoxDecoration(
          color: shape.color,
          borderRadius: shape.borderRadius,
        ),
      ),
    );
  }
}
