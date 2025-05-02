import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/mtn_form/mtn_form_event.dart';
import 'package:test_app_flutter2/bloc/mtn_form/mtn_form_state.dart';

class MtnFormBloc extends Bloc<MtnFormEvent, MtnFormState> {
  MtnFormBloc() : super(MtnFormInitialState()) {
    on<MtnFormSubmitEvent>((
      MtnFormSubmitEvent event,
      Emitter<MtnFormState> emit,
    ) async {
      emit(MtnFormLoading());
      print("Submitted: ${event.amount}");
      await Future.delayed(Duration(seconds: 2));
      emit(MtnFormSuccess(message: "Transaction Successful!"));
    });
    on<WalletChangedEvent>((event, emit) {
      if (state is MtnFormUpdated) {
        final currentState = state as MtnFormUpdated;
        emit(currentState.copyWith(walletDropdownValue: event.wallet));
      }
    });
  }
}
