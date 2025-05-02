import 'package:flutter/material.dart';

class ShowBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
    );
  }
}
