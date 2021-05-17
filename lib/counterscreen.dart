import 'package:bloc1/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                      onPressed: () {
                        CounterCubit.get(context).increase();
                      },
                      child: Text("increase")),
                  Text("${CounterCubit.get(context).counter}"),
                  FlatButton(
                      onPressed: () {
                        CounterCubit.get(context).decrease();
                      },
                      child: Text("decrease")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
