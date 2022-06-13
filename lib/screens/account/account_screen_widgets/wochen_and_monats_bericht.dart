import 'package:final_capstone/data/date_and_time_data.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/screens/account/account_screen_widgets/bericht.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';

class WochenAndMonatsbericht extends StatelessWidget {
  const WochenAndMonatsbericht({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BerichtWidget(
          title: wochenbericht,
          dates: '$firstDateOfTheWeek - $lastDateOfTheWeek',
          buttonText: wochenberichtZuschicken,
        ),
        const VerticalSpace(heightPercentage: 2),
        BerichtWidget(
          title: monatsbericht,
          dates: '$month $year',
          buttonText: monatsberichtErstellen,
        ),
      ],
    );
  }
}

