import 'package:flutter/material.dart';

import 'package:final_capstone/widgets/sized_box/horizontal_space.dart';
import 'package:final_capstone/widgets/text/roboto_text_body_one.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';

class UbersichtItem extends StatelessWidget {
  const UbersichtItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          RobotoTextBodyOne(
            text: title,
            textColor: Colors.black,
          ),
          const Spacer(),
          RobotoTextHeadlineTwo(
            text: value,
            fontSize: 16,
            textColor: Colors.black,
          ),
          const HorizontalSpace(widthPercentage: 2.5),
        ],
      ),
    );
  }
}
