import 'package:covid19_dashboard/components/top_info.dart';
import 'package:covid19_dashboard/components/your_own_text_container.dart';
import 'package:flutter/material.dart';
import '../components/preventions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopInfo(),
        Preventions(),
        const YourOwnTest(),
      ],
    );
  }
}
