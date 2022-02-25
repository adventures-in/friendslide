import '../../utils/types.dart';

class MovePuzzlePieceAction extends ReduxAction {
  MovePuzzlePieceAction({required this.atX, required this.atY});
  final int atX;
  final int atY;
}
