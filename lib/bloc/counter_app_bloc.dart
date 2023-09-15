import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_app_event.dart';
part 'counter_app_state.dart';

class CounterAppBloc extends Bloc<CounterAppEvent, CounterAppState> {
  int counter = 0;
  CounterAppBloc() : super(CounterAppInitial()) {
    on<CounterAppEvent>((event, emit) {
      if (event is IncrementEvent) {
        counter++;
        emit(CounterValueChangedState(counter: counter));
      } else if (event is DecrementEvent) {
        counter--;
        emit(CounterValueChangedState(counter: counter));
      } else {
        counter = 0;
        emit(CounterValueChangedState(counter: counter));
      }
    });
  }
}
