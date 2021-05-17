import 'package:bloc/bloc.dart';
import 'package:bloc1/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 10;

  void increase() {
    counter++;
    emit(CounterIncreaseState(counter));
  }

  void decrease() {
    counter--;
    emit(CounterDecreaseState(counter));

  }
}
