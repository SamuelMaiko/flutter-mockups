import 'package:flutter/material.dart';
import 'package:test_app_flutter2/pages/mtn_money/components/beneficiary_other_no.dart';
import 'package:test_app_flutter2/pages/mtn_money/components/send_form.dart';

class MtnMoneyPage extends StatelessWidget {
  const MtnMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MTN Money",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Color(0xFF1877F2),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF2a52be), width: 1),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color(0xF2D8E8F4),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Recent Transactions',
                      style: TextStyle(fontSize: 16, color: Color(0xFF2a52be)),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Color(0xFF2a52be),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Selecting beneficiary or other number
              BeneficiaryOtherNumber(),
              SendForm(),
            ],
          ),
        ),
      ),
    );
  }
}
