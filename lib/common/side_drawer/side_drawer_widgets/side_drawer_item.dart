import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/data/side_drawer_data.dart';
import 'package:final_capstone/utilities/constants/colors_constant.dart';

class SideDrawerItem extends StatelessWidget {
  const SideDrawerItem({
    Key? key,
    required this.currentIndex,
    required this.selectedIndex,
  }) : super(key: key);

  final int currentIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SvgPicture.asset(
              SideDrawerData.sideDrawerIcons[currentIndex],
              height: size.height * 0.05,
              color: selectedIndex == currentIndex ? Colors.black :lightGreyTextColor,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              SideDrawerData.sideDrawerText[currentIndex],
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: selectedIndex == currentIndex ? Colors.black: darkBlueTextColor,
                  ),
            ),
            SizedBox(height: size.height * 0.01),
            if(selectedIndex == currentIndex) Container(
              height: 4,
              width: deviceOrientation == Orientation.portrait ? size.width * 0.23: size.width * 0.1,
              color: const Color(0xFF8465FF),
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ],
    );
  }
}
