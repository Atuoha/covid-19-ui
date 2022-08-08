import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/colors.dart';

class MyCountryStats extends StatefulWidget {
  const MyCountryStats({Key? key}) : super(key: key);

  @override
  State<MyCountryStats> createState() => _MyCountryStatsState();
}

enum Size { big, small }

class _MyCountryStatsState extends State<MyCountryStats> {
  final _stats = ['Total', 'Today', 'Yesterday'];
  var _currentIndex = 0;
  var affectedStats = [20009, 345, 897];
  var deathStats = [87445, 9897, 1765];
  var recoveredStats = [4323, 897, 673];
  var activeStats = [3456, 8567, 345];
  var seriousStats = [3534, 6454, 8364];

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

  Widget kContainer(
    String title,
    String number,
    Color bgColor,
    BuildContext context,
    Size size,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Container(
        height: 100,
        width: size == Size.big
            ? MediaQuery.of(context).size.width / 2.4
            : MediaQuery.of(context).size.width / 3.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                number,
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

  NumberFormat numberFormat = NumberFormat.decimalPattern();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kText(_stats[0], 0),
            kText(_stats[1], 1),
            kText(_stats[2], 2),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kContainer(
              'Affected',
              numberFormat.format(affectedStats[_currentIndex]),
              affectedBg,
              context,
              Size.big,
            ),
            kContainer(
              'Death',
              numberFormat.format(deathStats[_currentIndex]),
              deathBg,
              context,
              Size.big,
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kContainer(
              'Recovered',
              numberFormat.format(recoveredStats[_currentIndex]),
              recoveredBg,
              context,
              Size.small,
            ),
            kContainer(
              'Active',
              numberFormat.format(activeStats[_currentIndex]),
              activeBg,
              context,
              Size.small,
            ),
            kContainer(
              'Serious',
              numberFormat.format(seriousStats[_currentIndex]),
              seriousBg,
              context,
              Size.small,
            )
          ],
        ),

        //DAILY NEW CASES CHART
      ],
    );
  }
}
