import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.iconName,
    required this.onPressed,
  }) : super(key: key);

  final String iconName;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(iconName),
      onPressed: () => onPressed(),
    );
  }
}
