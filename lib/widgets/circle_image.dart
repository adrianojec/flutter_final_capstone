import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key, required this.imageUrl
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.width * 0.07,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}