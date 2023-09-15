part of 'counter_app_bloc.dart';

@immutable
sealed class CounterAppState {}

final class CounterAppInitial extends CounterAppState {}

class CounterValueChangedState extends CounterAppState {
  final int counter;
  CounterValueChangedState({required this.counter});
}
