import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:flutter/material.dart';

class RobotoTextBodyOne extends StatelessWidget {
  const RobotoTextBodyOne({
    Key? key,
    required this.text,
    this.textColor,
  }) : super(key: key);

  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 12,
            color: textColor ?? darkBlueTextColor,
          ),
    );
  }
}
