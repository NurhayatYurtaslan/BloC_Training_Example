part of 'app_bloc.dart';

abstract class CounterAppState {}

final class CounterInitial extends CounterAppState {}

final class CounterChanged extends CounterAppState {
  final int counterValue;

  CounterChanged({required this.counterValue});
}
