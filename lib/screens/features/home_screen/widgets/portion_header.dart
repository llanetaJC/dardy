import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PortionHeader extends StatelessWidget {
  const PortionHeader(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.badge,
      required this.color,
      required this.hasBadge})
      : super(key: key);
  final String title;
  final Function onPressed;
  final int badge;
  final Color color;
  final bool hasBadge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyles.headLine(
                    color: DardyColors.darkBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Visibility(
                visible: hasBadge == true ? true : false,
                child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 10),
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        badge.toString(),
                        style: TextStyles.title(
                          color: DardyColors.white,
                        ),
                      ),
                    )),
              )
            ],
          ),
          GestureDetector(
            onTap: () => onPressed(),
            child: Row(
              children: [
                Text(
                  'See more',
                  style: TextStyles.title(
                    color: DardyColors.grey,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: DardyColors.grey,
                  size: 12,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
