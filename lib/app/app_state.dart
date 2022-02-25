import '../puzzle/state/puzzle_state.dart';

/// Immutable state for the app
class AppState {
  AppState.init() : _puzzle = PuzzleState.init();

  const AppState._(PuzzleState puzzle) : _puzzle = puzzle;

  final PuzzleState _puzzle;

  PuzzleState get puzzle => _puzzle;

  AppState copyWith({PuzzleState? puzzle}) => AppState._(puzzle ?? _puzzle);
}
