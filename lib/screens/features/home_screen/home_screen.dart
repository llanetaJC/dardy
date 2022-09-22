import 'package:dardy/model/merchant_data.dart';
import 'package:dardy/model/nearby_data.dart';
import 'package:dardy/model/rewards_data.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:dardy/screens/features/home_screen/merchants_screen.dart';
import 'package:dardy/screens/features/home_screen/rewards_screen.dart';
import 'package:dardy/screens/features/home_screen/widgets/category_container.dart';
import 'package:dardy/screens/features/home_screen/widgets/merchant_container.dart';
import 'package:dardy/screens/features/home_screen/widgets/nearby_container.dart';
import 'package:dardy/screens/features/home_screen/widgets/portion_header.dart';
import 'package:dardy/screens/features/home_screen/widgets/rewards_ready_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget topRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: DardyColors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(logo))),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: DardyColors.green,
                  ),
                  Text(
                    'Royal Ln. Mesa, New Jersey ',
                    style: TextStyles.caption(
                      color: DardyColors.black,
                    ),
                  ),
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: DardyColors.white, shape: BoxShape.circle),
                      child: Icon(Icons.keyboard_arrow_down,
                          color: DardyColors.black),
                    ),
                  )
                ],
              )
            ],
          ),

          SizedBox(
            height: 30,
          ),
          //    header
          Text(
            'Our Collection of',
            style: TextStyles.headLine(
                color: DardyColors.darkBlue,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
          Text(
            'Exclusive Rewards 😋',
            style: TextStyles.headLine(
                color: DardyColors.darkBlue,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget searchCategory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TextFormField(
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
                hintStyle: TextStyle(color: DardyColors.grey.withOpacity(0.7)),
                hintText: "Find for food or restaurant...",
                fillColor: DardyColors.lightGrey),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryContainer(
                    icon: FontAwesomeIcons.coffee,
                    isSelected: false,
                    title: 'Coffee'),
                CategoryContainer(
                    icon: FontAwesomeIcons.burger,
                    isSelected: false,
                    title: 'Food'),
                CategoryContainer(
                    icon: FontAwesomeIcons.shop,
                    isSelected: true,
                    title: 'Retail'),
                CategoryContainer(
                    icon: FontAwesomeIcons.dumbbell,
                    isSelected: false,
                    title: 'Gym'),
                CategoryContainer(
                    icon: FontAwesomeIcons.dog,
                    isSelected: false,
                    title: 'Vet'),
              ],
            ),
          ),

          //  Category content
          Column(
            children: [
              rewardsReady(),
              SizedBox(height: 30),
              merchants(),
              SizedBox(height: 30),
              nearby(),
              SizedBox(height: 30),
            ],
          )
        ],
      ),
    );
  }

  Widget rewardsReady() {
    return Column(
      children: [
        PortionHeader(
          title: 'Rewards Ready',
          onPressed: () =>
              pushNewScreen(context, screen: SeeAllRewardsScreen()),
          badge: 8,
          color: DardyColors.midbrown,
          hasBadge: true,
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: EdgeInsets.only(top: 10),
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.8),
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 10.0,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
              rewardsReadyData.length <= 4 ? rewardsReadyData.length : 4,
              (index) {
            return RewardsReadyContainer(
                imgUrl: rewardsReadyData.elementAt(index)['imgUrl']!,
                name: rewardsReadyData.elementAt(index)['name']!,
                shop: rewardsReadyData.elementAt(index)['shop']!,
                location: rewardsReadyData.elementAt(index)['location']!,
                points: rewardsReadyData.elementAt(index)['points']!);
          }),
        ),
      ],
    );
  }

  Widget merchants() {
    return Column(
      children: [
        PortionHeader(
          title: 'Merchants',
          onPressed: () =>
              pushNewScreen(context, screen: SeeAllMerchantsScreen()),
          badge: 8,
          color: DardyColors.green,
          hasBadge: true,
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: EdgeInsets.only(top: 10),
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.8),
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 10.0,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
              merchantData.length <= 4 ? merchantData.length : 4, (index) {
            return MerchantContainer(
                imgUrl: merchantData.elementAt(index)['imgUrl']!,
                shop: merchantData.elementAt(index)['shop']!,
                validity: merchantData.elementAt(index)['validity']!,
                points: merchantData.elementAt(index)['points']!);
          }),
        ),
      ],
    );
  }

  Widget nearby() {
    return Column(
      children: [
        PortionHeader(
          title: 'Nearby',
          onPressed: () => print('hello'),
          badge: 8,
          color: DardyColors.green,
          hasBadge: false,
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: EdgeInsets.only(top: 10),
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 2),
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 10.0,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
              nearbyData.length <= 4 ? nearbyData.length : 4, (index) {
            return NearbyContainer(
              imgUrl: nearbyData.elementAt(index)['imgUrl']!,
              shop: nearbyData.elementAt(index)['shop']!,
              location: nearbyData.elementAt(index)['location']!,
            );
          }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topRow(),
            searchCategory(),
          ],
        ),
      ),
    );
  }
}
