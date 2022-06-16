import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/custom_icon_button.dart';

class CloseButtonAndLogo extends StatelessWidget {
  const CloseButtonAndLogo({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          iconName: closeIcon,
          onPressed: () => _scaffoldKey.currentState?.closeDrawer(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: SvgPicture.asset(
            appLogo,
            height: size.height * 0.05,
          ),
        ),
      ],
    );
  }
}

