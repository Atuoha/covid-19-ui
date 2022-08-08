import 'package:covid19_dashboard/constants/colors.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      constraints: const BoxConstraints.expand(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             CustomAppBar(),
            SizedBox(height:20),
            Text(
              'Statistics',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color:Colors.white,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
