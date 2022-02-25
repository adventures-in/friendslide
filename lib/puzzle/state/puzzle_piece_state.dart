class PuzzlePieceState {
  const PuzzlePieceState(int x, int y, {bool selected = false})
      : _x = x,
        _y = y,
        _selected = selected;

  final int _x;
  final int _y;
  final bool _selected;

  int get x => _x;
  int get y => _y;
  bool get selected => _selected;

  PuzzlePieceState copyWith({int? x, int? y, bool? selected}) =>
      PuzzlePieceState(x ?? _x, y ?? _y, selected: selected ?? _selected);
}
