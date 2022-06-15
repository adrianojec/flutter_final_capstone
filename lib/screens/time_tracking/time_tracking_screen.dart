import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'package:final_capstone/common/side_drawer/side_drawer.dart';
import 'package:final_capstone/screens/time_tracking/add_time_trackin_screen_widgets/custom_app_bar.dart';

class TimeTrackingScreen extends StatefulWidget {
  static const routeName = '/time-tracking';

  const TimeTrackingScreen({Key? key}) : super(key: key);

  @override
  State<TimeTrackingScreen> createState() => _TimeTrackingScreenState();
}

class _TimeTrackingScreenState extends State<TimeTrackingScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SideDrawer(scaffoldKey: scaffoldKey),
      drawerEnableOpenDragGesture: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          child: Column(
            children: [
              const CustomAppBar(),
              Expanded(
                child: SfCalendar(
                  view: CalendarView.day,
                  headerDateFormat: 'E',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}