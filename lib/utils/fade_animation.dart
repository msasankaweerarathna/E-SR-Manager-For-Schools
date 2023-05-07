import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    var tween = MovieTween()
      ..scene(duration: const Duration(milliseconds: 500))
          .tween(
            'opacity',
            Tween<double>(begin: 0.0, end: 1.0),
            shiftEnd: Duration(
              milliseconds: 500,
            ),
          )
          .tween(
            'translateY',
            Tween<double>(begin: 300.0, end: 0.0),
            shiftEnd: Duration(milliseconds: 0),
          );

    // return ControlledAnimation(
    //   delay: Duration(milliseconds: (500 * delay).round()),
    //   duration: tween.duration,
    //   tween: tween,
    //   child: child,
    //   builderWithChild: (context, child, animation) => Opacity(
    //     opacity: animation["opacity"],
    //     child: Transform.translate(
    //         offset: Offset(0, animation["translateY"]), child: child),
    //   ),
    // );

    return PlayAnimationBuilder<Movie>(
      tween: tween,
      duration: tween.duration, // use duration from MovieTween
      builder: (context, value, _) {
        return Opacity(
          opacity: value.get('opacity'),
          child: Transform.translate(
            offset: Offset(
              0,
              value.get('translateY'),
            ),
            child: child,
          ),
        );
      },
    );
  }
}
