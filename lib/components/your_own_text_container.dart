import 'package:covid19_dashboard/constants/colors.dart';
import 'package:flutter/material.dart';

class YourOwnTest extends StatelessWidget {
  const YourOwnTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          height: size.height / 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [klighterPrimaryColor, primaryColor],
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
            ),
          ),
        ),
        Positioned(
          top: -30,
          left: 10,
          child: Image.asset('assets/images/own_test.png', width: 120),
        ),
        Positioned(
          right: 35,
          top: 13,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Do your own test!',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Follow the instruction to\n do your own test.',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
