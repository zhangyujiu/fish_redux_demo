import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/component/action.dart';
import 'package:fish_redux_demo/state.dart';

Reducer<CountState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountState>>{
      EditAction.remove: _remove
    },
  );
}


CountState _remove(CountState state, Action action) {
  final String unique = action.payload;
  final CountState newState = state.clone();
  newState.counts.removeWhere((String state) => state == unique);
  return newState;
}
