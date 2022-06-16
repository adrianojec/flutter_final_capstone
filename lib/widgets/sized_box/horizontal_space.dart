import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    Key? key,
    required this.widthPercentage,
  }) : super(key: key);

  final double widthPercentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * (widthPercentage / 100));
  }
}

