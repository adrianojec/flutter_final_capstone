import 'package:flutter/material.dart';

class RobotoTextHeadlineTwo extends StatelessWidget {
  const RobotoTextHeadlineTwo({
    Key? key,
    required this.text,
    required this.fontSize,
    this.textColor,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2!.copyWith(
            fontSize: fontSize,
            color: textColor ?? Colors.black,
          ),
    );
  }
}
