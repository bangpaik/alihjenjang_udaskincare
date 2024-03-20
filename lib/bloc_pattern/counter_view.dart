import 'package:flutter/material.dart';
import 'counter_bloc.dart';
import 'counter_provider.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bloc Pattern'
        ),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder(
        stream: bloc.getCount,
        initialData: CounterProvider().count,
        builder: (context, snapshot) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times : '),
              Text('${snapshot.data}', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: bloc.updateCount(),
        tooltip: 'Increment',
        child: Icon(Icons.add, color: Colors.white,) ,
      ),
    );
  }
}
