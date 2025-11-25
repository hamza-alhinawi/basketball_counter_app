import 'package:basket_ball_counter_app/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;
  void incrementTeamA(int buttomNumber) {
    teamAPoints += buttomNumber;

    emit(CounterAIncrementState());
  }

  void incrementTeamB(int buttomNumber) {
    teamBPoints += buttomNumber;

    emit(CounterBIncrementState());
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;

    emit(CounterResetState());
  }
}
