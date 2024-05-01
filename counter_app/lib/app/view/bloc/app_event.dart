part of 'app_bloc.dart';

sealed class CounterAppEvent{}

class CounterIncrement extends CounterAppEvent{}

class CounterDecrement extends CounterAppEvent{}

class CounterReset extends CounterAppEvent{}

