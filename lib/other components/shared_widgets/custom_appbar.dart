import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: DardyColors.white,
      leading:
          Icon(FontAwesomeIcons.arrowLeft, color: DardyColors.black, size: 15),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Center(
            child: Text(
              'Notification',
              style: TextStyles.title(color: DardyColors.black),
            ),
          ),
        )
      ],
    );
  }
}
