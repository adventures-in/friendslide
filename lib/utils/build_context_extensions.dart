import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:friendslide/app/app_state.dart';

import 'types.dart';

extension BuildContextExtension on BuildContext {
  dynamic dispatch(ReduxAction action) {
    return StoreProvider.of<AppState>(this, listen: false).dispatch(action);
  }

  dynamic dispatchAndListen(ReduxAction action) {
    return StoreProvider.of<AppState>(this).dispatch(action);
  }

  AppState get appState =>
      StoreProvider.of<AppState>(this, listen: false).state;
}
