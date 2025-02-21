import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_clean_arch/common/config/dark_theme.dart';
import 'package:provider_clean_arch/common/config/light_theme.dart';
import 'package:provider_clean_arch/features/counter/data/datasources/counter_datasource.dart';
import 'package:provider_clean_arch/features/counter/data/repositories/counter_repository_impl.dart';
import 'package:provider_clean_arch/features/counter/domain/repositories/counter_repository.dart';
import 'package:provider_clean_arch/features/counter/domain/usecases/get_counter_usecase.dart';
import 'package:provider_clean_arch/features/counter/presentation/pages/counter_page.dart';
import 'package:provider_clean_arch/features/counter/presentation/providers/counter_provider.dart';

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
      home: ChangeNotifierProvider(
          create: (_) => CounterProvider(
                GetCounterUseCase(
                  CounterRepositoryImpl(
                    CounterDatasource(),
                  ),
                ),
              ),
          child: const CounterPage()),
    );
  }
}
