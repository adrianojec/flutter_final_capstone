import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:final_capstone/widgets/text/text.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    required this.hint,
    required this.value,
    this.icon,
    required this.isUnderlined,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  final String hint;
  final String value;
  final Widget? icon;
  final bool isUnderlined;
  final Function(String) onChanged;
  final List<DropdownMenuItem<String>> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isUnderlined ? const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3, color: lightGreyTextColor),
        ),
      ): null,
      width: MediaQuery.of(context).size.width,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: RobotoTextBodyOne(text: hint),
          items: items,
          icon: icon,
          isExpanded: true,
          onChanged: (value) => onChanged(value!),
        ),
      ),
    );
  }
}

