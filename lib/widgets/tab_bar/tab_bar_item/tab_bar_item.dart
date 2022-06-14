import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      alignment: Alignment.center,
      child: Tab(
        text: text,
      ),
    );
  }
}
