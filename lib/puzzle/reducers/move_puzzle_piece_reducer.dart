import 'package:redux/redux.dart';

import '../../app/app_state.dart';

class MovePuzzlePieceReducer extends ReducerClass<AppState> {
  @override
  AppState call(state, action) {
    var piece = state.puzzle.pieces[action.id]!;
    return state.copyWith(
        puzzle: state.puzzle
            .copyWithPiece(action.id, piece.copyWith(x: piece.x + 1)));
  }
}
