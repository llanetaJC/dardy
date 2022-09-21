import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearbyContainer extends StatelessWidget {
  const NearbyContainer({
    Key? key,
    required this.imgUrl,
    required this.shop,
    required this.location,
  }) : super(key: key);
  final String imgUrl;
  final String shop;
  final String location;

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
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: DardyColors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 12),
                            Text(
                              location,
                              style: TextStyles.subTitle(
                                  color: DardyColors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              shop,
                              style: TextStyles.title(
                                  color: DardyColors.black, fontsize: 13),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: DardyColors.green),
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
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: DardyColors.midbrown,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Icon(
                        Icons.chevron_right,
                        color: DardyColors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
          Container(
            height: 125,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgUrl), fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: DardyColors.white),
          ),
        ],
      ),
    );
  }
}
