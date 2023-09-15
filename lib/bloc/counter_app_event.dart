part of 'counter_app_bloc.dart';

@immutable
sealed class CounterAppEvent {}
class IncrementEvent extends CounterAppEvent{}
class DecrementEvent extends CounterAppEvent{}
class ResetEvent extends CounterAppEvent{}


