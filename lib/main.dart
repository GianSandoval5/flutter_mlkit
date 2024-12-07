import 'package:flutter/material.dart';
import 'package:flutter_ml_kit/src/pages/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ML Kit Demo',
      home: HomeScreen(),
    );
  }
}
