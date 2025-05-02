import 'package:flutter/material.dart';

class BeneficiaryOtherNumber extends StatelessWidget {
  const BeneficiaryOtherNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(
                color: Color(0xFF1877F2),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                "Select Beneficiary",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "Other Number",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
