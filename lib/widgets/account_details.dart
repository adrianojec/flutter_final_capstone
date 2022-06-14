import 'package:flutter/material.dart';

import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:final_capstone/widgets/container/container.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.position,
    this.mobile,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final String firstName;
  final String lastName;
  final String email;
  final String? position;
  final String? mobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RobotoTextHeadlineTwo(
          text: title,
          fontSize: 22,
        ),
        const VerticalSpace(heightPercentage: 1),
        Row(
          children: [
            CircleImage(imageUrl: imageUrl),
            const HorizontalSpace(widthPercentage: 2.5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RobotoTextHeadlineTwo(
                  text: '$firstName $lastName',
                  fontSize: 16,
                ),
                RobotoTextBodyOne(text: email),
                const VerticalSpace(heightPercentage: 1.5),
                position != null
                    ?RobotoTextBodyOne(text: position!)
                    :ClippedContainer(text: mobile!)
                ,
              ],
            ),
          ],
        ),
      ],
    );
  }
}
