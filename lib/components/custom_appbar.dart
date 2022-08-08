import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: const Icon(
            Icons.sort_rounded,
            color: Colors.white,
          ),
        ),
        const InkWell(
          onTap: null,
          child: Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
