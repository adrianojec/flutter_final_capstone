import 'package:flutter/material.dart';

import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen_widgets/arbeitszeit_widgets/arbeitszeit_widgets.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';


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