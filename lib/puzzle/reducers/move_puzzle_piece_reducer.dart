import 'package:friendslide/puzzle/state/puzzle_piece_state.dart';
import 'package:redux/redux.dart';

import '../../app/app_state.dart';
import '../../utils/vec.dart';

class MovePuzzlePieceReducer extends ReducerClass<AppState> {
  @override
  AppState call(state, action) {
    PuzzlePieceState p = state.puzzle.pieces[action.id]!;
    Vec e = Vec(state.puzzle.emptyX, state.puzzle.emptyY);

    // if the empty space is proximate in x or y
    Vec r = e - p.vec;
    if (r.abs.len == 1) {
      return state.copyWith(
          puzzle: state.puzzle.updatePiece(
              action.id, p.copyWith(x: p.x + r.x, y: p.y + r.y),
              emptyX: p.x, emptyY: p.y));
    }

    return state;
  }
}
