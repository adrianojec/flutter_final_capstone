import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/widgets/buttons/custom_icon_button.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/account_screen_widgets.dart';
import 'package:final_capstone/widgets/container/custom_container.dart';
import 'package:final_capstone/common/side_drawer/side_drawer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: SideDrawer(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        leading: CustomIconButton(
          iconName: menuIcon,
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                child: Column(
                  children: const [
                    MeinKonto(),
                    VerticalSpace(heightPercentage: 2),
                    VorgesetzteR(),
                    VerticalSpace(heightPercentage: 2),
                    WochenAndMonatsbericht(),
                  ],
                ),
              ),
              const VerticalSpace(heightPercentage: 2),
              const Ubersicht(),
              const AktuellesBudget(),
              const VerticalSpace(heightPercentage: 2),
              const Krankheitstage(),
              const VerticalSpace(heightPercentage: 2),
              const AzKonto(),
            ],
          ),
        ),
      ),
    );
  }
}

