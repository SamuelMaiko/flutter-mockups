import 'package:flutter/material.dart';
import 'package:test_app_flutter2/pages/home/components/custom_app_bar.dart';
import 'package:test_app_flutter2/pages/home/components/payment_options.dart';
import 'package:test_app_flutter2/pages/home/components/quick_links.dart';
import 'package:test_app_flutter2/pages/home/components/show_balance.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Color(0xFFf5f5f5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ShowBalance(),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1877F2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: MediaQuery.of(context).size.width * 0.94,
                      height: 200,
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 0,
                      ),
                      // width: ,
                      child: PaymentOptions(),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.16,
                      left: (MediaQuery.of(context).size.width - 324) / 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: MediaQuery.of(context).size.width * 0.84,
                          height: 480,
                          child: QuickLinks(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 500),
            ],
          ),
        ),
      ),
    );
  }
}
