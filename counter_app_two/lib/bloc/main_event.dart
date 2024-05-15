part of 'main_bloc.dart';

abstract class CounterEvent {
    int? counter=0;
  CounterEvent({this.counter});
}

class CounterInitialEvent extends CounterEvent {
      int? counter;
  CounterInitialEvent({this.counter});
}

class CounterIncrementEvent extends CounterEvent {
      int? counter;
  CounterIncrementEvent({this.counter});
}

class CounterDecrementEvent extends CounterEvent {
        int? counter;
  CounterDecrementEvent({this.counter});
}

class CounterResetEvent extends CounterEvent {
        int? counter;
  CounterResetEvent({this.counter});
}
