import 'package:flutter/material.dart';
import 'package:provider_clean_arch/common/config/dark_theme.dart';
import 'package:provider_clean_arch/common/config/light_theme.dart';
import 'package:provider_clean_arch/features/counter/presentation/pages/counter_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const CounterPage(),
    );
  }
}
