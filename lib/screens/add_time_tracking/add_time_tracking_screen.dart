import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/buttons.dart';
import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen_widgets/arbeitszeit.dart';
import 'package:final_capstone/widgets/tab_bar/custom_tab_bar.dart';
import 'package:final_capstone/widgets/tab_bar/tab_bar_item/tab_bar_item.dart';


class AddTimeTrackingScreen extends StatefulWidget{
  static const routeName = '/add-time-tracking';

  const AddTimeTrackingScreen({Key? key}) : super(key: key);

  @override
  State<AddTimeTrackingScreen> createState() => _AddTimeTrackingScreenState();
}

class _AddTimeTrackingScreenState extends State<AddTimeTrackingScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: CustomIconButton(
          iconName: closeIcon,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SvgPicture.asset(
              appLogo,
              height: size.height * 0.05,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomTabBar(
              tabController: _tabController,
              tabs: const [
                TabBarItem(text: arbeitszeit),
                TabBarItem(text: pause),
              ],
            ),
            Expanded(child: TabBarView(
              controller: _tabController,
              children: [
                Arbeitszeit(),
                Text(pause),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}