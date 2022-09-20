import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardsReadyContainer extends StatelessWidget {
  const RewardsReadyContainer({Key? key, required this.imgUrl, required this.name, required this.shop, required this.location, required this.points}) : super(key: key);
  final String imgUrl;
  final String name;
  final String shop;
  final String location;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: DardyColors.midbrown,
        
      ),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyles.title(
              color: DardyColors.black ,
            ),
          ),
          Image.asset(imgUrl),
          Row(
            children: [
              Text(
                shop,
                style: TextStyles.title(
                  color: DardyColors.black ,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: DardyColors.green
                ),
                child: Icon(Icons.check,color: DardyColors.white,),
              )
            ],
          ),

          Row(
            children: [
              Icon(Icons.location_on,color: DardyColors.black,size: 12,),
              SizedBox(width: 5,),
              SizedBox(
                width: 125,
                child: Text(
                  location,
                  style: TextStyles.title(
                    color: DardyColors.black ,
                  ),
                ),
              ),

            ],
          ),

          Row(
            children: [
              Icon(FontAwesomeIcons.coins,color: DardyColors.black,size: 12,),
              SizedBox(width: 5,),
              Text(
                points,
                style: TextStyles.title(
                  color: DardyColors.black ,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
