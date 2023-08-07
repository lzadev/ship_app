import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/dashboard_page.dart';
import 'providers/dark_mode_provider.dart';
import 'widgets/custom_scroll_behavior.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode
          ? ThemeData.dark(
              useMaterial3: true,
            )
          : ThemeData.light(
              useMaterial3: true,
            ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      scrollBehavior: CustomScrollBehavior(),
      title: 'Ship App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ship App",
          ),
          actions: [
            IconButton(
              onPressed: () =>
                  ref.read(isDarkModeProvider.notifier).state = !isDarkMode,
              icon: Icon(
                isDarkMode ? Icons.brightness_4 : Icons.brightness_2,
              ),
            ),
          ],
        ),
        body: const Dashboard(),
      ),
    );
  }
}
