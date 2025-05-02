import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuickLinkCard extends StatelessWidget {
  final String svgPath;
  final String name;

  const QuickLinkCard({required this.name, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            width: 34,
            height: 34,
            colorFilter: ColorFilter.mode(Color(0xFF1877F2), BlendMode.srcIn),
            // color: Color(0xFF1877F2),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
