import 'package:dardy/model/notification_model.dart';
import 'package:dardy/other%20components/shared_widgets/custom_appbar.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:dardy/screens/features/notification/notification_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DardyColors.white,
        leading: Icon(FontAwesomeIcons.arrowLeft,
            color: DardyColors.black, size: 15),
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
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Container(
          color: DardyColors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => NotificationContainer(
                    imgUrl:
                        notificationData.elementAt(index)['imgUrl'].toString(),
                    message:
                        notificationData.elementAt(index)['message'].toString(),
                    shop: notificationData.elementAt(index)['shop'].toString(),
                    shopLogo: notificationData
                        .elementAt(index)['shopLogo']
                        .toString(),
                    dateCreated: DateTime.parse(notificationData
                        .elementAt(index)['dateCreated']
                        .toString()),
                  ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: notificationData.length),
        )),
      ),
    );
  }
}
