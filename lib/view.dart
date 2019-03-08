import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/action.dart';
import 'package:fish_redux_demo/state.dart';
import 'package:flutter/material.dart';

Widget buildView(CountState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: Text("fish-redux测试-${state.counts.length.toString()}"),
    ),
    body: Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemBuilder: adapter.itemBuilder, itemCount: adapter.itemCount))
      ],
    ),
    floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          dispatch(CountActionCreator.addAction());
        }),
  );
}
