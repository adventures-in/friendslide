class PuzzlePieceState {
  const PuzzlePieceState(int x, int y)
      : _x = x,
        _y = y;
  final int _x;
  final int _y;

  int get x => _x;
  int get y => _y;

  PuzzlePieceState copyWith({int? x, int? y}) =>
      PuzzlePieceState(x ?? _x, y ?? _y);
}
