import 'package:final_capstone/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/ubersicht_widgets/ubersicht_items.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';

class Ubersicht extends StatelessWidget {
  const Ubersicht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const RobotoTextHeadlineTwo(
                text: ubersicht,
                fontSize: 22,
              ),
              const Spacer(),
              SvgPicture.asset(treeIcon),
            ],
          ),
          const VerticalSpace(heightPercentage: 2),
          const UbersichtItems(),
          const CustomButton(
            buttonText: urlaubBeantragen,
            iconName: addIconWhiteColor,
          ),
        ],
      ),
    );
  }
}
