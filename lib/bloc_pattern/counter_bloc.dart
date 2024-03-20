import 'dart:async';

import 'package:alihjenjang_udaskincare/bloc_pattern/counter_provider.dart';

class CounterBloc{

  final counterController = StreamController(); // proses membuat sebuah stream controller
  final CounterProvider provider = CounterProvider();

  Stream get getCount=> counterController.stream;

   updateCount(){
    provider.increaseCount();
    counterController.sink.add(provider.count);
  }

  void dispose(){
    counterController.close(); //close stream controller
  }
}

final bloc = CounterBloc();