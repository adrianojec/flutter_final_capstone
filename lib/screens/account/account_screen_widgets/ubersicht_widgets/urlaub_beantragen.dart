import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/custom_button.dart';

class UrlaubBeantragen extends StatelessWidget {
  const UrlaubBeantragen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CustomButton(
              buttonText: urlaubBeantragen,
              iconName: addIconWhiteColor,
              onPressed: (){},
            ),
          ],
        ),
      ],
    );
  }
}

