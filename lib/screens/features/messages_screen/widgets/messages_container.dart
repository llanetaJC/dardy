import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer(
      {super.key, required this.message, required this.dateCreated});

  final String message;
  final DateTime dateCreated;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: DardyColors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.access_time_outlined,
                size: 12,
                color: DardyColors.grey,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${DateFormat.jm().format(dateCreated)} | ${DateFormat.yMMMd().format(dateCreated)}',
                style:
                    TextStyles.subTitle(color: DardyColors.grey, fontSize: 12),
              )
            ],
          ),
          Text(
            message,
            style: TextStyles.caption(
                color: DardyColors.black, fontWeight: FontWeight.w600),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
