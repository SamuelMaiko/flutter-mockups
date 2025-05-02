import 'package:flutter/material.dart';
import 'package:test_app_flutter2/pages/home/components/payment_option_card.dart';

class PaymentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      children: [
        PaymentOptionCard(
          imagePath: "assets/mtn.png",
          name: "Mtn Money",
          onPressed: () {
            Navigator.pushNamed(context, '/mtn-money');
          },
        ),
        PaymentOptionCard(imagePath: "assets/airtel.png", name: "Airtel Money"),
        PaymentOptionCard(
          imagePath: "assets/wallet.png",
          name: "Other centenary account",
        ),
        PaymentOptionCard(
          imagePath: "assets/other_bank.png",
          name: "Other Bank Transfer",
        ),
      ],
    );
  }
}
