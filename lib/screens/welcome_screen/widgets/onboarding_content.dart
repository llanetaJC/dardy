import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';

class SliderContent extends StatelessWidget {
  const SliderContent({
    super.key,
    required this.title,
    required this.body,
  });

  final String title, body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: DardyColors.black,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            body,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: DardyColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
