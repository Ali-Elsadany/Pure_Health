import 'package:flutter/material.dart';

class CircleAvatarSetting extends StatelessWidget {
  const CircleAvatarSetting({
    super.key, required this.color, required this.icon,
  });
  final Color color;
  final  Icon icon;    

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
        backgroundColor: color, child: icon);
  }
}