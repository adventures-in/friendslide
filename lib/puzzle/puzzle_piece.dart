import 'package:flutter/material.dart';

class PuzzlePiece extends StatelessWidget {
  const PuzzlePiece(
      {required this.x,
      required this.y,
      required this.selected,
      required this.callback,
      Key? key})
      : super(key: key);

  final int x;
  final int y;
  final bool selected;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        top: selected ? x * 100.0 : (x + 1) * 100.0,
        left: selected ? y * 0.0 : (y + 1) * 100.0,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
            onTap: () => callback(),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('$x,$y')),
            )));
  }
}
