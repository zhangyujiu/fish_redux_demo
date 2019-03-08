import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/action.dart';
import 'package:fish_redux_demo/state.dart';

Reducer<CountState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountState>>{CountAction.add: _add},
  );
}

CountState _add(CountState state, Action action) {
  var clone = state.clone();
  clone.counts.add("fish-rdux");
  return clone;
}
