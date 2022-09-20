import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({Key? key, required this.icon, required this.isSelected, required this.title}) : super(key: key);
  final IconData icon;
  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: isSelected == true ? DardyColors.green :  DardyColors.lightGrey,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(icon,color: isSelected == true ? DardyColors.white : DardyColors.grey),
        ),
        SizedBox(height: 10,),
        Text(
          title,
          style: TextStyles.subTitle(
            color: isSelected == true ? DardyColors.black :DardyColors.grey,
          ),
        ),
      ],
    );
  }
}
