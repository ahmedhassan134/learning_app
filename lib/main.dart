import 'package:flutter/material.dart';
import 'package:learning_app/View/screens/family_member.dart';
import 'package:learning_app/View/screens/home-page.dart';

import 'View/screens/number_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
