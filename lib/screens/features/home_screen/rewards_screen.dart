import 'package:dardy/model/rewards_data.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:dardy/screens/features/home_screen/widgets/rewards_ready_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeeAllRewardsScreen extends StatelessWidget {
  const SeeAllRewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: DardyColors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(FontAwesomeIcons.arrowLeft,
              color: DardyColors.black, size: 15),
        ),
        title: Text(
          'Rewards',
          style: TextStyles.title(color: DardyColors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: DardyColors.grey),
                  suffixIconColor: DardyColors.grey,
                  focusColor: DardyColors.grey,
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: DardyColors.lightGrey, width: 0.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: DardyColors.lightGrey),
                  ),
                  filled: true,
                  hintStyle:
                      TextStyle(color: DardyColors.grey.withOpacity(0.7)),
                  hintText: "Find for food or restaurant...",
                  fillColor: DardyColors.lightGrey),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                padding: EdgeInsets.zero,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.8),
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 10.0,
                children: List.generate(rewardsReadyData.length, (index) {
                  return RewardsReadyContainer(
                      imgUrl: rewardsReadyData.elementAt(index)['imgUrl']!,
                      name: rewardsReadyData.elementAt(index)['name']!,
                      shop: rewardsReadyData.elementAt(index)['shop']!,
                      location: rewardsReadyData.elementAt(index)['location']!,
                      points: rewardsReadyData.elementAt(index)['points']!);
                }),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
