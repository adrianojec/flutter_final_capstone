import 'package:flutter/material.dart';

import 'package:final_capstone/common/side_drawer/side_drawer_widgets/close_button_and_logo.dart';
import 'package:final_capstone/common/side_drawer/side_drawer_widgets/side_drawer_items.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              CloseButtonAndLogo(scaffoldKey: _scaffoldKey),
              SizedBox(height: size.height * 0.05),
              const SideDrawerItems(),
            ],
          ),
        ),
      ),
    );
  }
}