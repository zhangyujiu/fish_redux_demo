
import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/action.dart';
import 'package:fish_redux_demo/state.dart';
import 'package:flutter/material.dart';

Widget buildView(CountState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("fish-redux测试"),
    ),
    body: Center(
      child: Text(state.count.toString()),
    ),
    floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: (){
      dispatch(CountActionCreator.addAction());
    }),
  );
}