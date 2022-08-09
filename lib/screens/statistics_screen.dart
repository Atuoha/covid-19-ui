import 'package:covid19_dashboard/constants/colors.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import '../components/statistics_type.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      constraints: const BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                SizedBox(height: 20),
                Text(
                  'Statistics',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          StatisticsType()
        ],
      ),
    );
  }
}
