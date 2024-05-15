import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 155)) {
    on<CounterInitialEvent>(_initialEvent);
    on<CounterIncrementEvent>(_incrementInitial);
    on<CounterDecrementEvent>(_decrementInitial);
    on<CounterResetEvent>(_resetInitial);
  }

  void _incrementInitial(
      CounterIncrementEvent event, Emitter<CounterState> emit) {
    final newCounter = state.counter! + 1;
    emit(CounterState(counter: newCounter));
  }

  void _decrementInitial(
      CounterDecrementEvent event, Emitter<CounterState> emit) {
    final newCounter = state.counter! - 1;
    emit(CounterState(counter: newCounter));
  }

  void _resetInitial(CounterResetEvent event, Emitter<CounterState> emit) {
    const newCounter = 0;
    emit(CounterState(counter: newCounter));
  }

  FutureOr<void> _initialEvent(CounterInitialEvent event, Emitter<CounterState> emit) {
    emit(CounterState(counter: 0));
  }
}
