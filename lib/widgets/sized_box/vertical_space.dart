import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    Key? key,
    required this.heightPercentage,
  }) : super(key: key);

  final double heightPercentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * (heightPercentage / 100));
  }
}

