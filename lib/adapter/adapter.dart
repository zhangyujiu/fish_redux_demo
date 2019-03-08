import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/component/component.dart';
import 'package:fish_redux_demo/state.dart';

class CountAdapter extends DynamicFlowAdapter<CountState> {
  CountAdapter()
      : super(
      pool: <String, Component<Object>>{
          'count': CountComponent(),
        },
      connector: _ListConnector()
  );
}

class _ListConnector implements Connector<CountState, List<ItemBean>> {
  @override
  List<ItemBean> get(CountState state) {
    if (state.counts?.isNotEmpty == true) {
      return state.counts
          .map<ItemBean>((String data) => ItemBean('count', data))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(CountState state, List<ItemBean> substate) {
    if (substate?.isNotEmpty == true) {
      state.counts = List<String>.from(
          substate.map<String>((ItemBean bean) => bean.data).toList());
    } else {
      state.counts = <String>[];
    }
  }
}
