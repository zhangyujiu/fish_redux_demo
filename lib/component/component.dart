import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/component/effect.dart';

import 'view.dart';

class CountComponent extends Component<String> {
  CountComponent()
      : super(view: buildView, effect: buildEffect());
}
