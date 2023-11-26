import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_events.dart';
import 'package:ulearning_app/app_states.dart';
import 'dart:developer' as devtools show log;

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitState()) {
    devtools.log("counter bloc");
    on<Increment>((event, emit) {
      emit(AppState(counter: state.counter! + 1));
    });

    on<Decrement>((event, emit) {
      emit(AppState(counter: state.counter! - 1));
    });
  }
}
