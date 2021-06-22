import 'package:clubhouse/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme/lightTheme.dart';

void main() {
  runApp(Clubhouse());
}

class Clubhouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clubhouse Clone',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Home(),
    );
  }
}
