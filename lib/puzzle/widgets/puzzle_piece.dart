import 'package:flutter/material.dart';
import 'package:friendslide/puzzle/actions/move_puzzle_piece_action.dart';
import 'package:friendslide/utils/build_context_extensions.dart';

import '../state/puzzle_piece_state.dart';

class PuzzlePiece extends StatelessWidget {
  const PuzzlePiece({required this.state, Key? key}) : super(key: key);

  final PuzzlePieceState state;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        top: state.selected ? state.x * 100.0 : (state.x + 1) * 100.0,
        left: state.selected ? state.y * 0.0 : (state.y + 1) * 100.0,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
            onTap: () => context
                .dispatch(MovePuzzlePieceAction(atX: state.x, atY: state.y)),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('${state.x},${state.y}')),
            )));
  }
}
