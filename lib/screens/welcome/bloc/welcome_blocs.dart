import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/screens/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/screens/welcome/bloc/welcome_states.dart';
import 'dart:developer' as devtools show log;

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    devtools.log("Welcome Bloc");
    on<WelcomeEvent>((event, emit) {
      emit(WelcomeState(page: state.page));
    });
  }
}
