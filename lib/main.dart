import 'package:flutter/material.dart';

import 'Screens/home_page.dart';
import 'package:bmicalculator/Screens/Route_generator.dart';

void main() => runApp(BMICalculator());

//improve UI
//have a settings bar
//add Hover cover and create custom Flat Button
//add more features such as Alarm,Calories using http,meditation songs, calender , exercise detector (Steps) and recommendations , animations , login , refer some health apps.
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor:  Color(0xFF0A0E21),

          textTheme: TextTheme(
              body1: TextStyle(color: Colors.white
              )
      )
      ),
      home: HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}


