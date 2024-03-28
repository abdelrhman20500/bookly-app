import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});

  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white.withOpacity(0.05)),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
            color: Colors.white,
          )),
    );
  }
}
