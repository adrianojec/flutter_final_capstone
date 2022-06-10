import 'package:flutter/material.dart';

import 'package:final_capstone/utils/constants/colors_constant.dart';
import 'package:final_capstone/utils/theme_data/app_bar_theme_data.dart';
import 'package:final_capstone/utils/theme_data/text_theme_data.dart';

final appTheme = ThemeData(
  scaffoldBackgroundColor: scaffoldColor,
  textTheme: textTheme,
  appBarTheme: appBarTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);