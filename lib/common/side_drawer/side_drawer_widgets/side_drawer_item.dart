import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/data/side_drawer_data.dart';
import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/common/side_drawer/side_drawer_widgets/side_drawer_items.dart';



class SideDrawerItem extends StatelessWidget {
  const SideDrawerItem({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: SideDrawerItems.selectedIndex == currentIndex ? const Color(0xFF8465FF): Colors.transparent,
                width: 4,
              )
            ),
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                SideDrawerData.sideDrawerIcons[currentIndex],
                height: size.height * 0.05,
                color: SideDrawerItems.selectedIndex == currentIndex ? Colors.black :lightGreyTextColor,
              ),
              const VerticalSpace(heightPercentage: 2),
              Text(
                SideDrawerData.sideDrawerText[currentIndex],
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 14,
                      color: SideDrawerItems.selectedIndex == currentIndex ? Colors.black: darkBlueTextColor,
                    ),
              ),
              const VerticalSpace(heightPercentage: 1),
            ],
          ),
        ),
        const VerticalSpace(heightPercentage: 5),
      ],
    );
  }
}
