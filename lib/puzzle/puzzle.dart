import 'package:flutter/material.dart';
import 'package:friendslide/puzzle/puzzle_piece.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PuzzlePiece(
            x: 0,
            y: 0,
            selected: selected,
            callback: () {
              setState(() {
                selected = !selected;
              });
            }),
        PuzzlePiece(
            x: 1,
            y: 0,
            selected: selected,
            callback: () {
              setState(() {
                selected = !selected;
              });
            }),
      ],
    );
  }
}
