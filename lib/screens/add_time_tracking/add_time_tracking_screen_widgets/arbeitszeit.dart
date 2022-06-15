import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen_widgets/arbeitszeit_widgets/bemerkung_hinzufugen.dart';
import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/buttons/buttons.dart';
import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen_widgets/arbeitszeit_widgets/arbeitszeit_widgets.dart';

class Arbeitszeit extends StatelessWidget {
  const Arbeitszeit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        VerticalSpace(heightPercentage: 3),
        Kategorie(),
        VerticalSpace(heightPercentage: 3),
        ProjektNummer(),
        VerticalSpace(heightPercentage: 3),
        Mitarbeiter(),
        VerticalSpace(heightPercentage: 3),
        BemerkungHinzufugen(),
      ],
    );
  }
}