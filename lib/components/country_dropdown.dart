import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CountryDownDown extends StatefulWidget {
  const CountryDownDown({Key? key}) : super(key: key);

  @override
  State<CountryDownDown> createState() => _CountryDownDownState();
}

class _CountryDownDownState extends State<CountryDownDown> {
  var countries = [
    {'image': 'assets/images/ng_flag.png', 'country': 'NG'},
    {'image': 'assets/images/usa_flag.png', 'country': 'USA'},
    {'image': 'assets/images/uk_flag.png', 'country': 'UK'},
    {'image': 'assets/images/cn_flag.png', 'country': 'CN'},
    {'image': 'assets/images/fr_flag.png', 'country': 'FR'},
    {'image': 'assets/images/it_flag.png', 'country': 'IT'},
    {'image': 'assets/images/in_flag.png', 'country': 'IN'},
  ];

  // ignore: prefer_typing_uninitialized_variables
  var _currentValue;

  @override
  void initState() {
    // TODO: implement initState
    _currentValue = countries[0]['country'];
    super.initState();
  }

  // = countries[0]['country'];

  void _changeValue(value) {
    setState(() {
      _currentValue = value;
      print(_currentValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButton(
        iconSize: 40,
        iconEnabledColor: btnInactiveBg,
        underline: const Text(''),
        value: _currentValue,
        items: countries
            .map(
              (data) => DropdownMenuItem(
                value: data['country'],
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(data['image']!),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      data['country']!,
                      style: const TextStyle(
                        color:textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
        onChanged: (value) {
          _changeValue(value);
        },
      ),
    );
  }
}
