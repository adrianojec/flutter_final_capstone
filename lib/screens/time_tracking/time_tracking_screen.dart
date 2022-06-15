import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen.dart';
import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimeTrackingScreen extends StatelessWidget {
  const TimeTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pushNamed(AddTimeTrackingScreen.routeName),
      icon: SvgPicture.asset(addIconBlackColor),
    );
  }
}
