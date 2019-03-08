import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/component/action.dart';
import 'package:flutter/material.dart';

Widget buildView(
    String state,
    Dispatch dispatch,
    ViewService viewService,
    ) {
  return ListTile(title: Text(state),onLongPress: (){
    dispatch(EditActionCreator.onRemoveAction(state));
  },);
}