import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart'; // Import ThemeProvider
import 'home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), // Provide the ThemeProvider
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.light(),  // Light theme
          darkTheme: ThemeData.dark(), // Dark theme
          themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light, // Use Provider to switch themes
          home: HomeScreen(),
        );
      },
    );
  }
}
