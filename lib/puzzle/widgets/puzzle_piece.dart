import 'package:flutter/material.dart';

import '../state/puzzle_piece_state.dart';

class PuzzlePiece extends StatelessWidget {
  const PuzzlePiece({
    required this.state,
    required this.selected,
    required this.callback,
    Key? key,
  }) : super(key: key);

  final PuzzlePieceState state;
  final bool selected;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        top: selected ? state.x * 100.0 : (state.x + 1) * 100.0,
        left: selected ? state.y * 0.0 : (state.y + 1) * 100.0,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
            onTap: () => callback(),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('${state.x},${state.y}')),
            )));
  }
}
