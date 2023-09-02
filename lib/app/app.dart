import 'package:flutter/material.dart';
import '../theme/theme.dart';
import 'screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio 4 Photographers - Template',
      theme: themeDefault,
      home: const HomeScreen(),
    );
  }
}
