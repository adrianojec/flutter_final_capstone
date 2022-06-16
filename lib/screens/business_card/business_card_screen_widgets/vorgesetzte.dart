import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/account_details.dart';
import 'package:final_capstone/widgets/address_details.dart';
import 'package:final_capstone/widgets/contact_details.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/freezed_models/supervisor/supervisor.dart';

class Vorgesetzte extends StatelessWidget {
  const Vorgesetzte({
    Key? key,
    required this.supervisor,
  }) : super(key: key);

  final Supervisor supervisor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AccountDetails(
            title: vorgesetzte,
            firstName: supervisor.firstName,
            lastName: supervisor.lastName,
            email: supervisor.email,
            position: supervisor.position,
            imageUrl: supervisor.imageUrl,
          ),
          const VerticalSpace(heightPercentage: 4),
          SvgPicture.asset('assets/images/user_qr.svg'),
          const VerticalSpace(heightPercentage: 4),
          AddressDetails(address: supervisor.address),
          const VerticalSpace(heightPercentage: 4),
          ContactDetails(
            telephone: supervisor.telephone,
            fax: supervisor.fax,
            mobile: supervisor.mobile,
            email: supervisor.email,
          ),
        ],
      ),
    );
  }
}
