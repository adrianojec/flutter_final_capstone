import 'package:flutter/material.dart';

import 'package:final_capstone/common/side_drawer/side_drawer_widgets/side_drawer_item.dart';
import 'package:final_capstone/data/side_drawer_data.dart';
import 'package:final_capstone/home.dart';
import 'package:final_capstone/screens/time_tracking/time_tracking_screen.dart';

class SideDrawerItems extends StatefulWidget {
  const SideDrawerItems({Key? key}) : super(key: key);

  static int selectedIndex = 0;

  @override
  State<SideDrawerItems> createState() => _SideDrawerItemsState();
}

class _SideDrawerItemsState extends State<SideDrawerItems> {
  void selectedItem(int index){
    setState((){
      if(index != 2){
        SideDrawerItems.selectedIndex = index;
        HomeScreen.selectedItem.value = SideDrawerItems.selectedIndex;
        Navigator.of(context).pop();
      }else{
        SideDrawerItems.selectedIndex = index;
        Navigator.of(context).pushNamed(TimeTrackingScreen.routeName);
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          itemCount: SideDrawerData.sideDrawerText.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => selectedItem(index),
            child: SideDrawerItem(currentIndex: index),
          ),
        ),
      ),
    );
  }
}
