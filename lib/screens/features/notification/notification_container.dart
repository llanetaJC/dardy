import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer(
      {super.key,
      required this.imgUrl,
      required this.shop,
      required this.message,
      required this.shopLogo,
      required this.dateCreated});

  final String imgUrl;
  final String shop;
  final String message;
  final String shopLogo;
  final DateTime dateCreated;

  Widget noImage(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message,
                style: TextStyles.caption(
                    fontSize: 14, fontWeight: FontWeight.w400)),
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () => print(''),
                child: Text(
                  'See the results',
                  style: TextStyles.title(color: DardyColors.green),
                ))
          ],
        ),
      ),
    );
  }

  Widget withImage(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.75,
            child: Text(
              message,
              style:
                  TextStyles.caption(fontSize: 12, fontWeight: FontWeight.w400),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imgUrl), fit: BoxFit.fill)),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        color: DardyColors.white,
      ),
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: DardyColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  child: Icon(
                    Icons.notifications_rounded,
                    color: DardyColors.green,
                    size: 25,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      shop,
                      style: TextStyles.title(
                        color: DardyColors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 12,
                        ),
                        Text(
                          DateFormat.yMMMd().format(dateCreated),
                          style: TextStyles.subTitle(
                              color: DardyColors.black, fontSize: 10),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                  DateFormat.jm().format(dateCreated),
                  style: TextStyles.title(color: DardyColors.green),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: DardyColors.grey.withOpacity(0.5),
                )
              ],
            )
          ],
        ),
        imgUrl.isNotEmpty ? withImage(context) : noImage(context),
      ]),
    );
  }
}
