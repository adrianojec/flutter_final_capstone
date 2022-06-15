import 'package:flutter/material.dart';

import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/account_screen_widgets.dart';
import 'package:final_capstone/widgets/container/custom_container.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/account_details.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UnionPage user;

  @override
  Widget build(BuildContext context) {
    return user.when(
      (value) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                child: Column(
                  children: [
                    AccountDetails(
                      title: meinKonto,
                      imageUrl: value.imageUrl,
                      firstName: value.firstName,
                      lastName: value.lastName,
                      email: value.email,
                      position: value.position,
                    ),
                    const VerticalSpace(heightPercentage: 4),
                    AccountDetails(
                      title: vorgesetzter,
                      imageUrl: value.supervisor.imageUrl,
                      firstName: value.supervisor.firstName,
                      lastName: value.supervisor.lastName,
                      email: value.supervisor.email,
                      mobile: value.supervisor.mobile,
                    ),
                    const VerticalSpace(heightPercentage: 4),
                    const WochenAndMonatsbericht(),
                  ],
                ),
              ),
              const VerticalSpace(heightPercentage: 2),
              Ubersicht(user: value),
              const AktuellesBudget(),
              const VerticalSpace(heightPercentage: 2),
              Krankheitstage(sickLeave: value.sickLeave),
              const VerticalSpace(heightPercentage: 2),
              const AzKonto(),
            ],
          ),
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (message) => Center(
        child: RobotoTextHeadlineTwo(
          text: message!,
          fontSize: 22,
        ),
      ),
    );
  }
}
