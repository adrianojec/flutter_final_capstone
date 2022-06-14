import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/account_details.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisitenKarte extends StatelessWidget {
  const VisitenKarte({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UnionPage user;

  @override
  Widget build(BuildContext context) {
    return user.when(
      (value) => Column(
        children: [
          AccountDetails(
            title: visitenkarte,
            firstName: value.firstName,
            lastName: value.lastName,
            email: value.email,
            position: value.position,
            imageUrl: value.imageUrl,
          ),
          const VerticalSpace(heightPercentage: 4),
          SvgPicture.asset('assets/images/user_qr.svg'),
          const VerticalSpace(heightPercentage: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RobotoTextHeadlineTwo(
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
                        text: value.address.locationName,
                        fontSize: 16,
                      ),
                      RobotoTextBodyOne(text: value.address.street),
                      RobotoTextBodyOne(text: value.address.city),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (message) => Center(child: Text(message!)),
    );
  }
}
