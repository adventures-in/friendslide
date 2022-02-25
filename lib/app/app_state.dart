import '../puzzle/state/puzzle_piece_state.dart';

/// Immutable state for the app
class AppState {
  const AppState.init()
      : _emptyX = 0,
        _emptyY = 0,
        _pieces = const [PuzzlePieceState(0, 0), PuzzlePieceState(1, 0)];

  const AppState._(int emptyX, int emptyY, List<PuzzlePieceState> pieces)
      : _emptyX = emptyX,
        _emptyY = emptyY,
        _pieces = pieces;

  final int _emptyX;
  final int _emptyY;
  final List<PuzzlePieceState> _pieces;

  int get emptyX => _emptyX;
  int get emptyY => _emptyY;
  List<PuzzlePieceState> get pieces =>
      List<PuzzlePieceState>.unmodifiable(_pieces);

  AppState copyWith(
          {int? emptyX, int? emptyY, List<PuzzlePieceState>? pieces}) =>
      AppState._(emptyX ?? _emptyX, emptyY ?? _emptyY, pieces ?? _pieces);
}
