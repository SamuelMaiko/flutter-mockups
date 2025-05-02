abstract class MtnFormEvent {}

class MtnFormSubmitEvent extends MtnFormEvent {
  final String wallet;
  final String bankAccount;
  final String amount;
  final String narration;
  final String PIN;

  MtnFormSubmitEvent({
    required this.wallet,
    required this.bankAccount,
    required this.amount,
    required this.narration,
    required this.PIN,
  });
}

// for the wallet dropdown
class WalletChangedEvent extends MtnFormEvent {
  final String wallet;
  WalletChangedEvent({required this.wallet});
}
