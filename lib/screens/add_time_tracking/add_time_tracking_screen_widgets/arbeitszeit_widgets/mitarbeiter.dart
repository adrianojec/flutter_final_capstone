import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/custom_icon_button.dart';
import 'package:final_capstone/widgets/text/text.dart';

class Mitarbeiter extends StatelessWidget {
  const Mitarbeiter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AllertaTextHeadlineThree(
              text: mitarbeiter,
              fontSize: 22,
            ),
            RobotoTextBodyOne(text: hinzufugenOderBearbeiten),
          ],
        ),
        const Spacer(),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: CustomIconButton(
            iconName: addIconWhiteColor,
            onPressed: (){},
          ),
        ),
      ],
    );
  }
}

