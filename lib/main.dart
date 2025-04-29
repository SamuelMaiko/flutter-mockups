import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mockups',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // '/about': (context) => AboutPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          color: Color(0xFFf5f5f5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20, // size of the circle
                        backgroundImage: AssetImage('assets/image.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hello Jesse",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Last Login Dec 2 2024 7:55PM",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                      size: 31,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.power_settings_new,
                      color: Colors.black,
                      size: 31,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        ),
      ),
      body: Container(
        color: Color(0xFFf5f5f5),
        child: Column(
          children: [
            // first child
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xFF2a52be),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.layers_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 216, 214, 218),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.alarm, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 150,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF2a52be),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DefaultTextStyle(
                        style: TextStyle(color: Color(0xFFf5f5f5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Available Balance",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "UGX XXXXXX",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.visibility),
                                SizedBox(width: 10),
                                Text("show balance"),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "320XXXX220",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                                const Text(
                                  "Mini statement",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // second child
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1877F2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 200,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    // width: ,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PaymentOption(
                          imagePath: "assets/mtn.png",
                          name: "Mtn Money",
                        ),
                        PaymentOption(
                          imagePath: "assets/airtel.png",
                          name: "Airtel Money",
                        ),
                        PaymentOption(
                          imagePath: "assets/wallet.png",
                          name: "Other centenary account",
                        ),
                        PaymentOption(
                          imagePath: "assets/other_bank.png",
                          name: "Other Bank Transfer",
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * 0.66,
                    left: (MediaQuery.of(context).size.width - 400) / 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 355,
                        height: 600,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                QuickLink(
                                  name: "Send Money",
                                  svgPath:
                                      "assets/svg/money-send-svgrepo-com.svg",
                                ),
                                QuickLink(
                                  name: "CenterMobile Loans",
                                  svgPath:
                                      "assets/svg/bank-card-2-svgrepo-com.svg",
                                ),
                                QuickLink(
                                  name: "Bill Payments",
                                  svgPath: "assets/svg/receipt-svgrepo-com.svg",
                                ),
                              ],
                            ),
                            SizedBox(height: 28),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                QuickLink(
                                  name: "Airtime and Data Bundles",
                                  svgPath: "assets/svg/customer-support.svg",
                                ),
                                QuickLink(
                                  name: "School fees",
                                  svgPath: "assets/svg/settings.svg",
                                ),
                                QuickLink(
                                  name: "Agent Withdrawal",
                                  svgPath: "assets/svg/security.svg",
                                ),
                              ],
                            ),
                            SizedBox(height: 28),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                QuickLink(
                                  name: "Cente Xpress",
                                  svgPath: "assets/svg/notifications.svg",
                                ),
                                QuickLink(
                                  name: "Payments and Collections",
                                  svgPath: "assets/svg/question.svg",
                                ),
                                QuickLink(
                                  name: "Card Services",
                                  svgPath: "assets/svg/info-circle.svg",
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                QuickLink(
                                  name: "My Transactions",
                                  svgPath: "assets/svg/user-profile-circle.svg",
                                ),
                                QuickLink(
                                  name: "Requests",
                                  svgPath: "assets/svg/history.svg",
                                ),
                                QuickLink(
                                  name: "Account Settings",
                                  svgPath: "assets/svg/account-settings.svg",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// my reusable widgets
class PaymentOption extends StatelessWidget {
  final String imagePath;
  final String name;

  const PaymentOption({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 24, // size of the circle
            backgroundImage: AssetImage(imagePath),
            backgroundColor: Colors.transparent,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class QuickLink extends StatelessWidget {
  final String svgPath;
  final String name;

  const QuickLink({required this.name, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            width: 40,
            height: 40,
            color: Color(0xFF1877F2),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
