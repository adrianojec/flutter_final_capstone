import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:final_capstone/widgets/tab_bar/tab_bar_item/tab_bar_item.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required TabController tabController,
    required this.firstBarItemText,
    required this.secondBarItemText,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;
  final String firstBarItemText;
  final String secondBarItemText;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      labelStyle: Theme.of(context).textTheme.headline3,
      labelColor: blackTextColor,
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: purpleButtonColor,
            width: 3,
          ),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      unselectedLabelColor: blackTextColor.withOpacity(0.3),
      tabs: [
        TabBarItem(text: firstBarItemText),
        TabBarItem(text: secondBarItemText),
      ],
    );
  }
}
