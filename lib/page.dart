
import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/state.dart';
import 'view.dart';
import 'reducer.dart';

class CountPage extends Page<CountState,Map<String, dynamic>>{
  CountPage() :super(
    initState:initState,
    view:buildView,
    reducer:buildReducer()
  );
}