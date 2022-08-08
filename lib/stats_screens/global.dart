import 'package:flutter/material.dart';
class GlobalStats extends StatefulWidget {
  const GlobalStats({Key? key}) : super(key: key);

  @override
  State<GlobalStats> createState() => _GlobalStatsState();
}

class _GlobalStatsState extends State<GlobalStats> {

  var stats = ['Total','Today','Yesterday'];

  @override
  Widget build(BuildContext context) {
    return Center(child:Text('Global Statistics'));
  }
}
