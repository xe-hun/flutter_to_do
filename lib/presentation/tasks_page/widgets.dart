// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

final animatedListKeys = <int, GlobalKey<AnimatedListState>>{};

Widget rowRemoveAndAddAnimation(Animation<double> animation, Widget child) {
  return SlideTransition(
    position: CurvedAnimation(parent: animation, curve: Curves.easeIn).drive(
      Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ),
    ),
    child: SizeTransition(
      sizeFactor: CurvedAnimation(curve: Curves.easeOutQuad, parent: animation),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
        ),
        child: child,
      ),
    ),
  );
}

void animateRowInsertion(
    {required GlobalKey<AnimatedListState> key, required int index}) {
  key.currentState
      ?.insertItem(index, duration: const Duration(milliseconds: 600));
}

void animateRowRemoval(
    {required int index,
    required GlobalKey<AnimatedListState> key,
    required Widget child}) {
  // very important to copy these values first
  // final pickedNumbersRow = List<int>.from(
  //   game1Provider.getPickedNumbersRowAt(
  //     index,
  //   ),
  // );

  animatedListKeys[key]!.currentState?.removeItem(
        index,
        duration: const Duration(milliseconds: 600),
        (context, animation) => rowRemoveAndAddAnimation(animation, child),
      );
}
