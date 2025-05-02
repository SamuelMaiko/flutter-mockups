abstract class MtnFormState {
  
}

class MtnFormInitialState extends MtnFormState {
  final String walletDropdownValue;
  final String bankAccountDropdownValue;

  MtnFormInitialState({
    this.walletDropdownValue = 'Any',
    this.bankAccountDropdownValue = "Any",
  });
}

class MtnFormLoading extends MtnFormState {}

class MtnFormSuccess extends MtnFormState {
  final String message;

  MtnFormSuccess({required this.message});
}

class MtnFormFailed extends MtnFormState {
  final String message;

  MtnFormFailed({required this.message});
}

class MtnFormUpdated extends MtnFormState {
  final String walletDropdownValue;
  final String bankAccountDropdownValue;

  MtnFormUpdated({
    required this.walletDropdownValue,
    required this.bankAccountDropdownValue,
  });

  MtnFormUpdated copyWith({String? walletDropdownValue}) {
    return MtnFormUpdated(
      walletDropdownValue: walletDropdownValue ?? this.walletDropdownValue,
      bankAccountDropdownValue:
          bankAccountDropdownValue ?? this.bankAccountDropdownValue,
    );
  }
}
