import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'country_dropdown.dart';
import 'custom_appbar.dart';

class TopInfo extends StatelessWidget {
  const TopInfo({Key? key}) : super(key: key);

  Widget kElevatedButton(
    IconData icon,
    Function action,
    Color color,
    String title,
  ) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 28,
        ),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      label: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => action(),
      icon: Icon(
        icon,
        color: Colors.white,
        size: 25,
      ),
    );
  }

  void _callNow() {
    if (kDebugMode) {
      print('Call Now');
    }
  }

  void _sendSMS() {
    if (kDebugMode) {
      print('Send SMS');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin:EdgeInsets
      // height: size.height/2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Covid-19',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                CountryDownDown()
              ],
            ),
            const SizedBox(height: 28),
            const Text(
              'Are you feeling sick?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 13),
            const Text(
              'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                kElevatedButton(
                  Icons.call,
                  _callNow,
                  deathBg,
                  'Call Now',
                ),
                kElevatedButton(
                  Icons.sms,
                  _sendSMS,
                  accentColor,
                  'Send SMS',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
