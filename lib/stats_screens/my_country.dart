import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyCountryStats extends StatefulWidget {
  const MyCountryStats({Key? key}) : super(key: key);

  @override
  State<MyCountryStats> createState() => _MyCountryStatsState();
}

class _MyCountryStatsState extends State<MyCountryStats> {
  var stats = ['Total', 'Today', 'Yesterday'];
  var _currentIndex = 0;
  var affected_stats = [20009, 345, 897];
  var death_stats = [87445, 9897, 1765];
  var recovered_stats = [4323, 897, 673];
  var active_stats = [3456, 8567, 345];
  var serious_stats = [3534, 6454, 8364];

  Widget kText(String title, int index) {
    return GestureDetector(
      onTap: () => setState(() {
        _currentIndex = index;
      }),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: TextStyle(
            color: _currentIndex == index ? Colors.white : klighterPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget kContainerBig(String title, int number, Color bgColor){
    return Container(

      decoration: BoxDecoration(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kText(stats[0], 0),
            kText(stats[1], 1),
            kText(stats[2], 2),
          ],
        ),
        const SizedBox(height: 10),
        Row(children: [
          Container(

          ),
        ],)
      ],
    );
  }
}
