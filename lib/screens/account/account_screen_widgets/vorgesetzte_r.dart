import 'package:flutter/material.dart';

import 'package:final_capstone/common/custom_clipper/rectangle_clipper.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:final_capstone/freezed_models/supervisor/supervisor.dart';

class VorgesetzteR extends StatelessWidget {
  const VorgesetzteR({
    Key? key,
    required this.supervisor,
  }) : super(key: key);

  final Supervisor supervisor;

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
            CircleImage(imageUrl: supervisor.imageUrl),
            const HorizontalSpace(widthPercentage: 2.5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RobotoTextHeadlineTwo(
                  text: '${supervisor.firstName} ${supervisor.lastName}',
                  fontSize: 16,
                ),
                RobotoTextBodyOne(text: supervisor.email),
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 20.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: RobotoTextBodyOne(
                        text: supervisor.mobile,
                        textColor: Colors.white,
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
