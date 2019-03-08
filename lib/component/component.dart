import 'package:fish_redux/fish_redux.dart';
import 'view.dart';

class CountComponent extends Component<String> {
  CountComponent() :
        super(view: buildView);
}
