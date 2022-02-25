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
        top: state.x * 100.0,
        left: state.y * 100.0,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
            onTap: () => context.dispatch(MovePuzzlePieceAction(id: state.id)),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('${state.x},${state.y}')),
            )));
  }
}
