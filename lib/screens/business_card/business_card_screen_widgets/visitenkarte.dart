import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/account_details.dart';
import 'package:final_capstone/widgets/address_details.dart';
import 'package:final_capstone/widgets/contact_details.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/freezed_models/user/user.dart';

class VisitenKarte extends StatelessWidget {
  const VisitenKarte({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AccountDetails(
            title: visitenkarte,
            firstName: user.firstName,
            lastName: user.lastName,
            email: user.email,
            position: user.position,
            imageUrl: user.imageUrl,
          ),
          const VerticalSpace(heightPercentage: 4),
          SvgPicture.asset('assets/images/user_qr.svg'),
          const VerticalSpace(heightPercentage: 4),
          AddressDetails(address: user.address),
          const VerticalSpace(heightPercentage: 4),
          ContactDetails(
            telephone: user.telephone,
            fax: user.fax,
            mobile: user.mobile,
            email: user.email,
          ),
        ],
      ),
    );
  }
}
