import 'package:flutter/material.dart';

class MulishText extends StatelessWidget {
  const MulishText({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      style: textTheme.headline4!.copyWith(fontSize: fontSize),
    );
  }
}
