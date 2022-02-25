import 'package:redux/redux.dart';

import '../../app/app_state.dart';

class MovePuzzlePieceReducer extends ReducerClass<AppState> {
  @override
  AppState call(state, action) {
    return state.copyWith(puzzle: state.puzzle.copyWithPieces(selected: true));
  }
}
