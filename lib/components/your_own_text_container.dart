import 'package:covid19_dashboard/constants/colors.dart';
import 'package:flutter/material.dart';

class YourOwnTest extends StatelessWidget {
  const YourOwnTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [klighterPrimaryColor, primaryColor],
            end:Alignment.centerRight,
            begin: Alignment.centerLeft
          ),
        ),
      ),
    );
  }
}
