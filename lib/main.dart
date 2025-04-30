import 'package:flutter/material.dart';
import 'package:gupta_info_tech_app/widgets/homepage.dart';

void main() {
  runApp(GuptaInfoTechApp());
}

class GuptaInfoTechApp extends StatelessWidget {
  const GuptaInfoTechApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gupta Info Tech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Roboto', // Add your custom font if using
      ),
      home: HomePage(),
    );
  }
}
