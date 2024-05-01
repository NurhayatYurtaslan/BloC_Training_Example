import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class CounterAppBloc extends Bloc<CounterAppEvent, CounterAppState> {
  int value = 0;
  CounterAppBloc() : super(CounterInital()) {
    on<CounterAppEvent>((event, emit) {
      if (event is CounterIncrement) {
        value++;
        emit(CounterChanged(counterValue: value));
      } else if (event is CounterDecrement) {
        value--;
        emit(CounterChanged(counterValue: value));
      } else if (event is CounterReset) {
        value = 0;
        emit(CounterChanged(counterValue: value));
      }
    });
  }
}
