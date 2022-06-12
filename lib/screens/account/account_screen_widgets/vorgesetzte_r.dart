import 'package:flutter/material.dart';

import 'package:final_capstone/common/custom_clipper/rectangle_clipper.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/sized_box/horizontal_space.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/widgets/text/roboto_text_body_one.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';

class VorgesetzteR extends StatelessWidget {
  const VorgesetzteR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RobotoTextHeadlineTwo(
          text: vorgesetzter,
          fontSize: 22,
        ),
        const VerticalSpace(heightPercentage: 1),
        Row(
          children: [
            const CircleImage(
                imageUrl:
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/nick-fury-eye-1552397861.jpg?crop=0.488xw:0.976xh;0,0&resize=480:*'),
            const HorizontalSpace(widthPercentage: 2.5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RobotoTextHeadlineTwo(
                  text: 'Nick Fury',
                  fontSize: 16,
                ),
                const RobotoTextBodyOne(text: 'nick_fury@gmail.com'),
                const VerticalSpace(heightPercentage: 1.5),
                ClipPath(
                  clipper: RectangleClipper(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      border: Border(
                        left: BorderSide(
                          color: Color(0xFF8465FF),
                          width: 3,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 20.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: RobotoTextBodyOne(
                        text: '0160 - 123456789',
                        textColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
