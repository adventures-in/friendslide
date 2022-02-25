class PuzzlePieceState {
  const PuzzlePieceState(int x, int y, String id)
      : _x = x,
        _y = y,
        _id = id;

  final int _x;
  final int _y;
  final String _id;

  int get x => _x;
  int get y => _y;
  String get id => _id;

  PuzzlePieceState copyWith({int? x, int? y, String? id}) =>
      PuzzlePieceState(x ?? _x, y ?? _y, id ?? _id);
}
