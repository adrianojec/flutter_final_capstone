import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    Key? key,
    required this.telephone,
    required this.fax,
    required this.mobile,
    required this.email,
  }) : super(key: key);

  final String telephone;
  final String fax;
  final String mobile;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RobotoTextHeadlineTwo(
          text: kontakt,
          fontSize: 22,
        ),
        const VerticalSpace(heightPercentage: 1),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 15.0,
              ),
              child: Center(child: SvgPicture.asset(userIconBlackColor)),
            ),
            const VerticalSpace(heightPercentage: 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RobotoTextHeadlineTwo(
                  text: 'T: $telephone',
                  fontSize: 16,
                ),
                RobotoTextHeadlineTwo(
                  text: 'F: $fax',
                  fontSize: 16,
                ),
                RobotoTextHeadlineTwo(
                  text: 'M: $mobile',
                  fontSize: 16,
                ),
                RobotoTextHeadlineTwo(
                  text: 'E: $email',
                  fontSize: 16,
                ),
                const VerticalSpace(heightPercentage: 2),
                const RobotoTextBodyOne(
                  text: 'www.flutter-bootcamp.com',
                  textColor: skyBlueTextColor,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
