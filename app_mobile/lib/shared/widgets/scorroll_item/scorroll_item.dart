import 'package:flutter/material.dart';

class ListWheelScrollViewX extends StatelessWidget {
  final Widget Function(BuildContext, int) builder;
  final Axis scrollDirection;

  final double itemExtent;
  final double diameterRatio;
  final void Function(int) onSelectedItemChanged;
  const ListWheelScrollViewX({
    required this.builder,
    required this.itemExtent,
    required this.onSelectedItemChanged,
    this.scrollDirection = Axis.vertical,
    this.diameterRatio = 100000,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: scrollDirection == Axis.horizontal ? 3 : 0,
      child: ListWheelScrollView.useDelegate(
        onSelectedItemChanged: onSelectedItemChanged,
        itemExtent: itemExtent,
        diameterRatio: diameterRatio,
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            return RotatedBox(
              quarterTurns: scrollDirection == Axis.horizontal ? 1 : 0,
              child: builder(context, index),
            );
          },
        ),
      ),
    );
  }
}
