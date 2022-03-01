import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../puzzle/state/puzzle_state.dart';
import '../utils/navigation/page_utils.dart';

/// Immutable state for the app
class AppState {
  const AppState.init()
      : _puzzle = const PuzzleState.init(),
        _pageConfigs = const IListConst([]);

  const AppState._(PuzzleState puzzle, IList<PageConfig> pageConfigs)
      : _puzzle = puzzle,
        _pageConfigs = pageConfigs;

  final PuzzleState _puzzle;
  final IList<PageConfig> _pageConfigs;

  PuzzleState get puzzle => _puzzle;

  AppState copyWith({PuzzleState? puzzle}) =>
      AppState._(puzzle ?? _puzzle, _pageConfigs);

  AppState copyAndAdd({PageConfig? pageConfig}) {
    if (pageConfig != null) {
      return AppState._(_puzzle, _pageConfigs.add(pageConfig));
    } else {
      return this;
    }
  }
}
