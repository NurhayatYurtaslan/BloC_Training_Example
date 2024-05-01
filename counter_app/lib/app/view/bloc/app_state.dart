part of 'app_bloc.dart';

sealed class CounterAppState {}

final class CounterInital extends CounterAppState {}

final class CounterChanged extends CounterAppState {
  final int counterValue;

  CounterChanged({required this.counterValue});
}
