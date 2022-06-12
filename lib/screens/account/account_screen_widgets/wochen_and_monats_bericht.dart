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
      children: const [
        BerichtWidget(
          title: wochenbericht,
          dates: '12.03 - 19.03.2021',
          buttonText: wochenberichtZuschicken,
        ),
        VerticalSpace(heightPercentage: 2),
        BerichtWidget(
          title: monatsbericht,
          dates: 'April 2020',
          buttonText: monatsberichtErstellen,
        ),
      ],
    );
  }
}

