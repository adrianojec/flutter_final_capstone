import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/common/custom_clipper/rectangle_clipper.dart';
import 'package:final_capstone/widgets/text/roboto_text_body_one.dart';

class ClippedContainer extends StatelessWidget {
  const ClippedContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RectangleClipper(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(
            left: BorderSide(
              color: purpleButtonColor,
              width: 3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 20.0,
            top: 5.0,
            bottom: 5.0,
          ),
          child: RobotoTextBodyOne(
            text: text,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

