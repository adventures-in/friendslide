import 'dart:collection';

import 'puzzle_piece_state.dart';

/// Immutable state for the puzzle
class PuzzleState {
  PuzzleState.init()
      : _emptyX = 0,
        _emptyY = 0,
        _pieces = UnmodifiableListView(
            [const PuzzlePieceState(0, 0), const PuzzlePieceState(1, 0)]);

  const PuzzleState._(
      int emptyX, int emptyY, UnmodifiableListView<PuzzlePieceState> pieces)
      : _emptyX = emptyX,
        _emptyY = emptyY,
        _pieces = pieces;

  final int _emptyX;
  final int _emptyY;
  final UnmodifiableListView<PuzzlePieceState> _pieces;

  int get emptyX => _emptyX;
  int get emptyY => _emptyY;
  List<PuzzlePieceState> get pieces =>
      List<PuzzlePieceState>.unmodifiable(_pieces);

  PuzzleState copyWithPieces({bool? selected}) {
    var newList = <PuzzlePieceState>[];
    for (PuzzlePieceState piece in _pieces) {
      newList.add(piece.copyWith(selected: selected));
    }

    return PuzzleState._(_emptyX, emptyY, UnmodifiableListView(newList));
  }

  /// We don't allow a [List<PuzzlePieceState>] to be passed in to copyWith
  /// as the resulting object is no longer immutable.
  PuzzleState copyWith({int? emptyX, int? emptyY}) =>
      PuzzleState._(emptyX ?? _emptyX, emptyY ?? _emptyY, _pieces);
}

// don't allow a list to be passed in anywhere, including:
// - copyWith
