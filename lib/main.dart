import 'package:covid19_dashboard/screens/bottom_nav.dart';
import 'package:flutter/material.dart';

void main()=> runApp(const Covid19Dash());

class Covid19Dash extends StatelessWidget{
  const Covid19Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNav(),
      routes: {},
    );
  }
}