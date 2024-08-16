import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/view/filter/filter_screen.dart';
import 'package:flutter_mine_exchange_project/view/home/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/filter_screen':
        return MaterialPageRoute(builder: (_) => const FilterScreen());        
      default:
        return _errorRoute();
    }

  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No Route'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Sorry no route was found!', style: TextStyle(color: Colors.red, fontSize: 18.0)),
        ),
      );
    });
  }
}