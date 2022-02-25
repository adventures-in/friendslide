import 'package:redux/redux.dart';

extension ReducersListExtension<AppState> on List<Reducer<AppState>> {
  /// Takes a list of [Reducer] and create a single reducer that applies all
  /// reducers in the list, using a [List.fold].
  Reducer<AppState> combine() => (state, dynamic action) =>
      fold(state, (previousState, reducer) => reducer(previousState, action));
}
