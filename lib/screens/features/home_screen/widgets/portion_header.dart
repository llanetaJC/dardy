import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PortionHeader extends StatelessWidget {
  const PortionHeader({Key? key, required this.title, required this.onPressed, required this.badge}) : super(key: key);
  final String title;
  final Function onPressed;
  final int badge;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyles.headLine(
                  color: DardyColors.darkBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),

            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: DardyColors.midbrown,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Text(
                    badge.toString(),
                    style: TextStyles.title(
                      color: DardyColors.white,
                    ),
                  ),
                )
            )
          ],
        ),

      Row(
        children: [
          Text(
            'See more',
            style: TextStyles.title(
              color: DardyColors.grey,
            ),
          ),
          Icon(FontAwesomeIcons.angleRight,color: DardyColors.grey,size: 12,)
        ],
      )

      ],
    );
  }
}
