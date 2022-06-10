import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utils/constants/strings_constant.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height * 0.1),
        SvgPicture.asset('$logoPath/logo.svg'),
        SizedBox(height: size.height * 0.08),
        Text(
          flutterFieldPass,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}

