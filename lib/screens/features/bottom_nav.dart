import 'package:dardy/other%20components/style/colors.dart';
import 'package:dardy/screens/features/home_screen/home_screen.dart';
import 'package:dardy/screens/features/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final PersistentTabController _controller = PersistentTabController();

  final List<Widget> _navScreens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      controller: _controller,
      screens: _navScreens,
      itemCount: 4,
      customWidget: (navBarEssentials) => CustomNavBarWidget(
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home_outlined),
            inactiveIcon: const Icon(Icons.home_outlined),
            activeColorPrimary: DardyColors.green,
            activeColorSecondary: DardyColors.white,
            inactiveColorPrimary: DardyColors.white,
            inactiveColorSecondary: DardyColors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.shopping_bag_outlined),
            inactiveIcon: const Icon(Icons.shopping_bag_outlined),
            activeColorPrimary: DardyColors.green,
            activeColorSecondary: DardyColors.white,
            inactiveColorPrimary: DardyColors.white,
            inactiveColorSecondary: DardyColors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.message),
            inactiveIcon: const Icon(Icons.message),
            activeColorPrimary: DardyColors.green,
            activeColorSecondary: Colors.white,
            inactiveColorPrimary: DardyColors.white,
            inactiveColorSecondary: DardyColors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.notifications),
            inactiveIcon: const Icon(Icons.notifications),
            activeColorPrimary: DardyColors.green,
            activeColorSecondary: Colors.white,
            inactiveColorPrimary: DardyColors.white,
            inactiveColorSecondary: DardyColors.grey,
          ),
        ],
        selectedIndex: _controller.index,
        onItemSelected: (index) {
          setState(() {
            _controller.index = index;
          });
        },
      ),
    );
  }
}

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget({
    super.key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? item.activeColorPrimary : item.inactiveColorPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                size: 23,
                color: isSelected
                    ? item.activeColorSecondary
                    : item.inactiveColorSecondary,
              ),
              child: item.icon,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          final index = items.indexOf(item);
          return Flexible(
            child: GestureDetector(
              onTap: () {
                onItemSelected(index);
              },
              child: _buildItem(item, selectedIndex == index),
            ),
          );
        }).toList(),
      ),
    );
  }
}
