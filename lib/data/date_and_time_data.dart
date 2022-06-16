import 'package:intl/intl.dart';

final dateNow = DateTime.now();
final currentDate = DateFormat('MM.dd.yyyy').format(dateNow);
final month = DateFormat('MMMM').format(dateNow);
final year = DateFormat('yyyy').format(dateNow);
final weekdays = dateNow.weekday;

final getFirstDateOfTheWeek = dateNow.subtract(Duration(days: weekdays));
final getLastDateOfTheWeek = dateNow.subtract(Duration(days: weekdays - 6));

final firstDateOfTheWeek = DateFormat('dd.MM').format(getFirstDateOfTheWeek);
final lastDateOfTheWeek = DateFormat('dd.MM.yyyy').format(getLastDateOfTheWeek);