import 'package:final_capstone/screens/time_tracking/time_tracking_screen.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/widgets/buttons/custom_icon_button.dart';
import 'package:final_capstone/common/side_drawer/side_drawer.dart';
import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/common/side_drawer/side_drawer_widgets/side_drawer_items.dart';
import 'package:final_capstone/screens/account/account_screen.dart';
import 'package:final_capstone/screens/business_card/business_card_screen.dart';
import 'package:flutter_svg/svg.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UnionPage user;
  static ValueNotifier<int> selectedItem = ValueNotifier<int>(SideDrawerItems.selectedIndex);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final pages = [
      AccountScreen(user: widget.user),
      BusinessCardScreen(user: widget.user),
      const TimeTrackingScreen(),
    ];

    return Scaffold(
      key: scaffoldKey,
      drawer: SideDrawer(scaffoldKey: scaffoldKey),
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        leading: CustomIconButton(
          iconName: menuIcon,
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset(addIconWhiteColor))
        ],
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: HomeScreen.selectedItem,
        builder: (context, value, _) => pages[value],
      ),
    );
  }
}
