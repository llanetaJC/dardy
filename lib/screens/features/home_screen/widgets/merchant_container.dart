import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MerchantContainer extends StatelessWidget {
  const MerchantContainer({
    Key? key,
    required this.imgUrl,
    required this.shop,
    required this.validity,
    required this.points,
  }) : super(key: key);
  final String imgUrl;
  final String shop;
  final String validity;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgUrl), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: DardyColors.white),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: DardyColors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: 110,
                      child: Text(
                        validity,
                        style: TextStyles.subTitle(
                            color: DardyColors.black, fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          shop,
                          style: TextStyles.title(
                              color: DardyColors.black, fontsize: 12),
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
                  ],
                ),
              ))
            ],
          ),
          Positioned(
              bottom: 12,
              right: 12,
              child: Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(
                    color: DardyColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: DardyColors.brown, shape: BoxShape.circle),
                        child: Image.asset(
                          coin,
                        ),
                      ),
                      Text(
                        points,
                        style: TextStyles.title(color: DardyColors.black),
                      ),
                      Text(
                        'pts',
                        style: TextStyles.subTitle(color: DardyColors.black),
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}
