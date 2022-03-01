import 'package:friendslide/utils/types.dart';

import 'page_utils.dart';

class NavigateAction extends ReduxAction {
  const NavigateAction({required this.config});
  final PageConfig config;
}
