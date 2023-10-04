import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentStateValue = state.count; //current count value (0)
      final incrementedValue =
          currentStateValue + 1; // current count value + 1 (0 + 1)

      return emit(CounterState(count: incrementedValue));
    });

    on<Decrement>((event, emit) {
      final currentStateValue = state.count; //current count value (0)
      final decrementedValue =
          currentStateValue - 1; // current count value - 1 (0 - 1)
      return emit(CounterState(count: decrementedValue));
    });
  }
}
