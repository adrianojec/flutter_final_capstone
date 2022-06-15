import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/drop_down/custom_drop_down.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:flutter_svg/svg.dart';

class Kategorie extends StatefulWidget {
  const Kategorie({Key? key}) : super(key: key);

  @override
  State<Kategorie> createState() => _KategorieState();
}

class _KategorieState extends State<Kategorie> {
  String dropdownValue = baustellenvorbereitung;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AllertaTextHeadlineThree(
          text: kategorie,
          fontSize: 22,
        ),
        CustomDropDown(
          hint: wahlenSieBitteKategorieAus,
          value: dropdownValue,
          isUnderlined: true,
          onChanged: (value) => setState(() => dropdownValue = value),
          icon: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SvgPicture.asset(doubleDownArrowIcon),
          ),
          items: const [
            DropdownMenuItem(
              value: baustellenvorbereitung,
              child: RobotoTextBodyOne(text: baustellenvorbereitung),
            ),
            DropdownMenuItem(
              value: 'Other',
              child: RobotoTextBodyOne(text: 'Other'),
            ),
            DropdownMenuItem(
              value: 'Term',
              child: RobotoTextBodyOne(text: 'Term'),
            ),
          ],
        ),
      ],
    );
  }
}
