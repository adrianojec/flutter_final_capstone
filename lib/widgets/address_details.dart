import 'package:flutter/material.dart';

import 'package:final_capstone/freezed_models/address/address.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({
    Key? key,
    required this.address,
  }) : super(key: key);

  final Address address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RobotoTextHeadlineTwo(
          text: adresse,
          fontSize: 22,
        ),
        const VerticalSpace(heightPercentage: 1),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              child: SvgPicture.asset(locationIcon),
            ),
            const VerticalSpace(heightPercentage: 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RobotoTextHeadlineTwo(
                  text: address.locationName,
                  fontSize: 16,
                ),
                RobotoTextBodyOne(text: address.street),
                RobotoTextBodyOne(text: address.city),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

