import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/drop_down/custom_drop_down.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:flutter_svg/svg.dart';

class ProjektNummer extends StatefulWidget {
  const ProjektNummer({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjektNummer> createState() => _ProjektNummerState();
}

class _ProjektNummerState extends State<ProjektNummer> {
  String dropdownValue = '1298721398';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AllertaTextHeadlineThree(
          text: projektnummer,
          fontSize: 22,
        ),
        CustomDropDown(
          hint: projektnummerHinzufugen,
          value: dropdownValue,
          isUnderlined: true,
          icon: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SvgPicture.asset(doubleDownArrowIcon),
          ),
          onChanged: (value) => setState(() => dropdownValue = value),
          items: const [
            DropdownMenuItem(
              value: '1298721398',
              child: RobotoTextBodyOne(text: '1298721398'),
            ),
          ],
        ),
      ],
    );
  }
}
