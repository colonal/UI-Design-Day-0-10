import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  final Direction direction;
  FadeAnimation({required this.child, this.direction = Direction.vertical});

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: Duration(milliseconds: 500),
      animationDuration: Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      direction: direction,
      offset: 0.5,
      child: child,
    );

    //  Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: <Widget>[
    //     const SizedBox(width: 20.0, height: 100.0),
    //     AnimatedTextKit(
    //       animatedTexts: [
    //         TypewriterAnimatedText(
    //           'Hello world!',
    //           textStyle: const TextStyle(
    //             fontSize: 32.0,
    //             fontWeight: FontWeight.bold,
    //           ),
    //           speed: const Duration(milliseconds: 2000),
    //         ),
    //       ],
    //       totalRepeatCount: 4,
    //       pause: const Duration(milliseconds: 1000),
    //       displayFullTextOnTap: true,
    //       stopPauseOnTap: true,
    //     ),
    //     const SizedBox(width: 20.0, height: 100.0),
    //     DefaultTextStyle(
    //       style: const TextStyle(
    //         fontSize: 40.0,
    //         fontFamily: 'Horizon',
    //       ),
    //       child: AnimatedTextKit(
    //         animatedTexts: [
    //           RotateAnimatedText('AWESOME'),
    //           // RotateAnimatedText('OPTIMISTIC'),
    //           // RotateAnimatedText('DIFFERENT'),
    //         ],
    //         onTap: () {
    //           print("Tap Event");
    //         },
    //       ),
    //     ),
    //   ],
    // );
  }
}
