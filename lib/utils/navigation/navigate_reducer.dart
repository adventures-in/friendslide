import 'package:redux/redux.dart';

import '../../app/app_state.dart';

class NavigateReducer extends ReducerClass<AppState> {
  @override
  AppState call(state, action) => state.copyAndAdd(pageConfig: action.config);
}
