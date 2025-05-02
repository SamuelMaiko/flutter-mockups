import 'package:flutter/material.dart';

class PaymentOptionCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final VoidCallback? onPressed;

  const PaymentOptionCard({
    required this.name,
    required this.imagePath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 82,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20, // size of the circle
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors.transparent,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 11),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
