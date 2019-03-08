import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';

Effect<String> buildEffect() {
  return combineEffects(<Object, Effect<String>>{
    EditAction.onRemove: _onRemove,
    //EditAction.remove: _remove,
  });
}

void _onRemove(Action action, Context<String> ctx) async {
  final String select = await showDialog<String>(
      context: ctx.context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          title: Text('你是否要删除 "${ctx.state}"？'),
          actions: <Widget>[
            GestureDetector(
              child: const Text(
                '取消',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () => Navigator.of(buildContext).pop(),
            ),
            GestureDetector(
              child: const Text('确定', style: TextStyle(fontSize: 14.0)),
              onTap: () => Navigator.of(buildContext).pop('Yes'),
            )
          ],
        );
      });

  if (select == 'Yes') {
    ctx.dispatch(EditActionCreator.removeAction(ctx.state));
  }
}
