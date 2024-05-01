part of 'app_bloc.dart';

abstract class CounterAppEvent{}

class CounterIncrement extends CounterAppEvent{}

class CounterDecrement extends CounterAppEvent{}

class CounterReset extends CounterAppEvent{}

class CounterXtwo extends CounterAppEvent{}