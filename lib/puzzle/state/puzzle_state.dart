import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import 'puzzle_piece_state.dart';

/// Immutable state for the puzzle
class PuzzleState {
  const PuzzleState.init()
      : _emptyX = 0,
        _emptyY = 0,
        _pieces = const IMapConst({
          '1': PuzzlePieceState(1, 0, '1'),
          '2': PuzzlePieceState(2, 0, '2'),
          '3': PuzzlePieceState(0, 1, '3'),
          '4': PuzzlePieceState(1, 1, '4'),
          '5': PuzzlePieceState(2, 1, '5'),
          '6': PuzzlePieceState(0, 2, '6'),
          '7': PuzzlePieceState(1, 2, '7'),
          '8': PuzzlePieceState(2, 2, '8'),
        });

  const PuzzleState._(
      int emptyX, int emptyY, IMap<String, PuzzlePieceState> pieces)
      : _emptyX = emptyX,
        _emptyY = emptyY,
        _pieces = pieces;

  final int _emptyX;
  final int _emptyY;
  final IMap<String, PuzzlePieceState> _pieces;

  int get emptyX => _emptyX;
  int get emptyY => _emptyY;
  IMap<String, PuzzlePieceState> get pieces => _pieces;

  PuzzleState copyWithPiece(String id, PuzzlePieceState piece) {
    return PuzzleState._(_emptyX, emptyY, _pieces.update(id, (value) => piece));
  }

  /// We don't allow a [List<PuzzlePieceState>] to be passed in to copyWith
  /// as the resulting object is no longer immutable.
  PuzzleState copyWith({int? emptyX, int? emptyY}) =>
      PuzzleState._(emptyX ?? _emptyX, emptyY ?? _emptyY, _pieces);
}
