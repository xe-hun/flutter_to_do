// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

//  TweenSequence(
//     <TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 0, end: 1.0)
//             .chain(CurveTween(curve: Curves.easeOut)),
//         weight: 40.0,
//       ),
//       TweenSequenceItem<double>(
//         tween: ConstantTween<double>(1.0),
//         weight: 20.0,
//       ),

final animatedListKeys = <int, GlobalKey<AnimatedListState>>{};
const kTaskAddAndRemovalUIAnimationDurationInMilliSeconds = 800;

enum InCurvePosition {
  first,
  last,
}

class InCurve extends Curve {
  const InCurve(this.inCurvePosition);
  final InCurvePosition inCurvePosition;

  @override
  double transformInternal(double t) {
    if (inCurvePosition == InCurvePosition.first) {
      return clampDouble(t, 0, .5) * 2;
    } else {
      return (clampDouble(t, 0.5, 1) - 0.5) * 2;
    }
  }
}

Widget rowRemoveAndAddAnimation(Animation<double> animation, Widget child) {
  return SizeTransition(
    sizeFactor: CurvedAnimation(
        curve: const InCurve(InCurvePosition.first), parent: animation),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: SlideTransition(
        position: CurvedAnimation(
                parent: animation, curve: const InCurve(InCurvePosition.last))
            .drive(
          Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ),
        ),
        child: child,
      ),
    ),
  );
}

void animateRowInsertion(
    {required GlobalKey<AnimatedListState> key, required int index}) {
  key.currentState?.insertItem(index,
      duration: const Duration(
          milliseconds: kTaskAddAndRemovalUIAnimationDurationInMilliSeconds));
}

void animateRowRemoval(
    {required int index,
    required GlobalKey<AnimatedListState> key,
    required Widget child}) {
  key.currentState?.removeItem(
    index,
    duration: const Duration(
        milliseconds: kTaskAddAndRemovalUIAnimationDurationInMilliSeconds),
    (context, animation) => rowRemoveAndAddAnimation(animation, child),
  );
}
