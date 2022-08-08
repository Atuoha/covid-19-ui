import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Preventions extends StatelessWidget {
  Preventions({Key? key}) : super(key: key);

  final _preventions = [
    {'image': 'assets/images/distance.png', 'text': 'Avoid close\n contact'},
    {
      'image': 'assets/images/wash_hands.png',
      'text': 'Clean your\n hands often'
    },
    {'image': 'assets/images/mask.png', 'text': 'Wear a\n facemask'},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Preventions',
            style: TextStyle(
              color: textColor,
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _preventions.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 52,
                          backgroundImage:
                              AssetImage(_preventions[index]['image']!),
                        ),
                        Text(
                          _preventions[index]['text']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
