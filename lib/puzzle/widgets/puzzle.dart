import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:friendslide/app/app_state.dart';
import 'package:friendslide/puzzle/widgets/puzzle_piece.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      distinct: true,
      converter: (store) => store.state,
      builder: (context, puzzle) {
        return Stack(
            children: puzzle.pieces
                .map((state) => PuzzlePiece(
                    state: state,
                    selected: selected,
                    callback: () => setState(() => selected = !selected)))
                .toList());
      },
    );
  }
}
