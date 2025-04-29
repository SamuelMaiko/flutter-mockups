import 'package:flutter/material.dart';

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
          color: Colors.white,
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
        color: Colors.white,
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
                        style: TextStyle(color: Colors.white),
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
            Container(child: Row(children: [

              ],)),
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
  Widget build (BuildContext context){
    return Container(child: Text("I'm a component"));
  }
}
