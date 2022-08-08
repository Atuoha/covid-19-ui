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

  Widget kContainerBig(
      String title, int number, Color bgColor, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width / 2.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17
                ),
              ),
              const SizedBox(height: 30),
              Text(
                number.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
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
        Row(
          children: [
            kContainerBig(
              'Affected',
              affected_stats[_currentIndex],
              affectedBg,
              context,
            ),
            kContainerBig(
              'Death',
              death_stats[_currentIndex],
              deathBg,
              context,
            )
          ],
        )
      ],
    );
  }
}
