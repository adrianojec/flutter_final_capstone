import 'package:flutter/material.dart';

import 'package:final_capstone/screens/account/account_screen_widgets/ubersicht_widgets/ubersicht_item.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/text/roboto_text_body_one.dart';

class UbersichtItems extends StatelessWidget {
  const UbersichtItems({
    Key? key,
    required this.annualLeave,
    required this.remainingLeave,
    required this.requestLeave,
    required this.previousYearLeave,
  }) : super(key: key);

  final int annualLeave;
  final int remainingLeave;
  final int requestLeave;
  final int previousYearLeave;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UbersichtItem(
          title: jahresurlaub,
          value: annualLeave.toString(),
        ),
        UbersichtItem(
          title: resturlaubEPOS,
          value: remainingLeave.toString(),
        ),
        UbersichtItem(
          title: beantragt,
          value: requestLeave.toString(),
        ),
        UbersichtItem(
          title: ubertragVorjahr,
          value: previousYearLeave.toString(),
        ),
        RobotoTextBodyOne(text: '(${gultigBis.toLowerCase()} 31.03.2021)'),
      ],
    );
  }
}
