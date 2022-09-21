import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardsReadyContainer extends StatelessWidget {
  const RewardsReadyContainer(
      {Key? key,
      required this.imgUrl,
      required this.name,
      required this.shop,
      required this.location,
      required this.points})
      : super(key: key);
  final String imgUrl;
  final String name;
  final String shop;
  final String location;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: DardyColors.lightbrown,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyles.title(color: DardyColors.black, fontsize: 15),
          ),
          Container(
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Image.asset(imgUrl)),
          Row(
            children: [
              Text(
                shop,
                style: TextStyles.title(color: DardyColors.black, fontsize: 12),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: DardyColors.green),
                child: Icon(
                  Icons.check,
                  color: DardyColors.white,
                  size: 8,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: DardyColors.black,
                  size: 12,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  width: 110,
                  child: Text(
                    location,
                    style: TextStyles.subTitle(
                        color: DardyColors.black, fontSize: 8),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Image.asset(coin, color: DardyColors.black, height: 10),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '$points points',
                  style: TextStyles.subTitle(
                      color: DardyColors.black, fontSize: 8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
