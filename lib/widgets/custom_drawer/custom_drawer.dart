import 'package:final_capstone/data/side_drawer_data.dart';
import 'package:final_capstone/widgets/custom_drawer/custom_drawer_widgets/close_button_and_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Drawer(
      width: size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CloseButtonAndLogo(scaffoldKey: _scaffoldKey),
              Expanded(
                child: ListView.builder(
                  itemCount: SideDrawerData.sideDrawerText.length,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SideDrawerData.sideDrawerIcons[index],
                            height: size.height * 0.05,
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            SideDrawerData.sideDrawerText[index],
                            style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14),
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
