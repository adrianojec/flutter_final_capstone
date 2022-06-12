import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 25.0,
      ),
      child: child,
    );
  }
}
