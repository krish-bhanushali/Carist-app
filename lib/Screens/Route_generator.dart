import 'package:bmicalculator/Screens/home_page.dart';
import 'package:bmicalculator/Screens/input_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
      case '/': return MaterialPageRoute(builder: (_) => HomePage());
      case '/first': return MaterialPageRoute(builder: (_) => HomePage());
      case '/BMI': return MaterialPageRoute(builder: (_) => InputPage() );
      default:
        return _errorRoute();
    }






  }


  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('ERROR'),
        ),
        body: Center(
          child: Text('Error 404 , Sorry',style: TextStyle(color: Colors.white),),
        ),
      );
    });
  }

}


