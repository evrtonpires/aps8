import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APS Iso 14K',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}
