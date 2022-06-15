import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/buttons.dart';
import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';

class BemerkungHinzufugen extends StatelessWidget {
  const BemerkungHinzufugen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 50.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: const CircleImage(
                      imageUrl: 'https://www.cheatsheet.com/wp-content/uploads/2019/06/RDJ-Tony-Stark.jpg'),
                ),
                hintText: bemerkungHinzufugen,
                hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black.withOpacity(0.3))),
          ),
        ),
        const VerticalSpace(heightPercentage: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: () {},
              child: RobotoTextHeadlineTwo(
                text: abbrechen,
                fontSize: 14,
              ),
            ),
            CustomButton(
              buttonText: speichern,
              iconName: paperPlaneIconWhiteColor,
              onPressed: (){},
            ),
          ],
        ),
      ],
    );
  }
}

