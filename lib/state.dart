import 'package:fish_redux/fish_redux.dart';

class CountState implements Cloneable<CountState>{
  List<String> counts=[];
  @override
  CountState clone() {
    return CountState()..counts=counts;
  }
}

CountState initState(Map<String, dynamic> args){
  return CountState();
}