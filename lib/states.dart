abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterIncreaseState extends CounterStates {
  final counter;

  CounterIncreaseState(this.counter);
}

class CounterDecreaseState extends CounterStates {
  final counter;

  CounterDecreaseState(this.counter);
}
