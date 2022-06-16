import 'package:flutter/material.dart';

class AllertaTextHeadlineThree extends StatelessWidget {
  const AllertaTextHeadlineThree({
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
      style: textTheme.headline3!.copyWith(fontSize: fontSize),
    );
  }
}
