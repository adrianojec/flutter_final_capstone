import 'package:flutter/material.dart';

import 'package:final_capstone/screens/account/account_screen_widgets/ubersicht_widgets/ubersicht_item.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/text/roboto_text_body_one.dart';

class UbersichtItems extends StatelessWidget {
  const UbersichtItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UbersichtItem(
          title: jahresurlaub,
          value: '25',
        ),
        UbersichtItem(
          title: resturlaubEPOS,
          value: '10',
        ),
        UbersichtItem(
          title: beantragt,
          value: '08',
        ),
        UbersichtItem(
          title: ubertragVorjahr,
          value: '01',
        ),
        RobotoTextBodyOne(text: '(${gultigBis.toLowerCase()} 31.03.2021)'),
      ],
    );
  }
}
