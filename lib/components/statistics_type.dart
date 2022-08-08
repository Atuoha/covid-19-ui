import 'package:flutter/material.dart';

import '../constants/colors.dart';

class StatisticsType extends StatefulWidget {
  const StatisticsType({Key? key}) : super(key: key);

  @override
  State<StatisticsType> createState() => _StatisticsTypeState();
}

class _StatisticsTypeState extends State<StatisticsType> {
  var statsType = ['My Country', 'Global'];
  var statsScreens = [];
  var _currentStatIndex = 0;

  Widget kContainer(String title, int index, BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _currentStatIndex = index;
      }),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width / 2.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _currentStatIndex == index ? Colors.white : Colors.transparent,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: _currentStatIndex == index ? textColor : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: btnInactiveBg.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  kContainer(statsType[0], 0, context),
                  kContainer(statsType[1], 1, context),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   child: Expanded(
          //     child: Column(
          //       children: [],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
