import 'package:dardy/model/message_data.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:dardy/screens/features/messages_screen/widgets/messages_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class MessagesScreen extends StatefulWidget {
  MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  List<String> _courseToggle = ["Rewards", "Message", "Invite"];

  int tabTextIndexSelected = 0;

  Widget topRow(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Container(
            height: 310,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(jollibeeImage), fit: BoxFit.fill)),
          ),
          Positioned(
              bottom: 10,
              right: 0,
              left: 0,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: DardyColors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: DardyColors.grey.withOpacity(0.2),
                                  style: BorderStyle.solid),
                              image: DecorationImage(
                                  image: AssetImage(jollibeeLogo),
                                  fit: BoxFit.contain)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Jollibee',
                                    style: TextStyles.title(
                                        color: DardyColors.black, fontsize: 20),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    margin: EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                        color: DardyColors.green,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.check,
                                      color: DardyColors.white,
                                      size: 12,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Clinton St.Plainview, NY',
                                style: TextStyles.subTitle(
                                    color: DardyColors.grey, fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: DardyColors.brown, shape: BoxShape.circle),
                          child: Image.asset(
                            coin,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '10/20',
                                style:
                                    TextStyles.title(color: DardyColors.black),
                              ),
                              Text(
                                'pts',
                                style: TextStyles.subTitle(
                                    color: DardyColors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget messageList() {
    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10),
        itemBuilder: (context, index) => MessageContainer(
              message: messageData.elementAt(index)['message']!,
              dateCreated: DateTime.parse(
                  messageData.elementAt(index)['dateCreated']!.toString()),
            ),
        separatorBuilder: (context, index) => SizedBox(height: 20),
        itemCount: messageData.length);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          topRow(context),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              decoration: BoxDecoration(
                color: DardyColors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  FlutterToggleTab(
                    width: 90,
                    borderRadius: 30,
                    height: 50,
                    selectedIndex: tabTextIndexSelected,
                    unSelectedBackgroundColors: [DardyColors.lightGrey],
                    selectedBackgroundColors: [DardyColors.green],
                    selectedTextStyle:
                        TextStyles.subTitle(color: DardyColors.white),
                    unSelectedTextStyle: TextStyles.subTitle(
                        color: DardyColors.grey.withOpacity(0.5)),
                    labels: _courseToggle,
                    selectedLabelIndex: (index) {
                      setState(() {
                        tabTextIndexSelected = index;
                      });
                    },
                    isScroll: false,
                  ),
                  Expanded(
                    child: tabTextIndexSelected == 0
                        ? messageList()
                        : tabTextIndexSelected == 1
                            ? messageList()
                            : messageList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
