import 'package:flutter/material.dart';

class CircleImageWidget extends StatelessWidget {
  const CircleImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,top: 10.0,right: 0.0,bottom: 0.0),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: Image.asset("assets/profile_image.jpg").image,
      ),
    );
  }
}
