import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calc_event.dart';
part 'calc_state.dart';

class CalcBloc extends Bloc<CalcEvent, CalcState> {
  CalcBloc() : super(CalcInitial()) {
    on<CalcEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
