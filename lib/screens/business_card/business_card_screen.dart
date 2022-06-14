import 'package:final_capstone/screens/business_card/business_card_screen_widgets/visitenkarte.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constantS.dart';
import 'package:final_capstone/widgets/account_details.dart';
import 'package:final_capstone/widgets/container/custom_container.dart';
import 'package:final_capstone/widgets/tab_bar/custom_tab_bar.dart';
import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:flutter_svg/svg.dart';

class BusinessCardScreen extends StatefulWidget {
  const BusinessCardScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UnionPage user;

  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> with SingleTickerProviderStateMixin {
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
    return Padding(
      padding: const EdgeInsets.symmetric(
      horizontal: 15.0,
      vertical: 10.0,
    ),
      child: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: CustomTabBar(
              tabController: _tabController,
              firstBarItemText: meineVisitenkarte,
              secondBarItemText: vorgesetzte,
            ),
          ),
          const VerticalSpace(heightPercentage: 2),
          Expanded(
            child: CustomContainer(
              child: TabBarView(
                controller: _tabController,
                children: [
                  VisitenKarte(user: widget.user),
                  Container(child: Text(vorgesetzte),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
