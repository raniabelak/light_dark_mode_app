import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            themeProvider.isDarkMode
                ? Image.asset('assets/moonn-removebg-preview.png', width: 100, height: 100)
                : Image.asset('assets/sunn-removebg-preview.png', width: 100, height: 100),
            
            const SizedBox(height: 20), 
            
            // Text below the image
            Text(
              themeProvider.isDarkMode ? 'Dark Mode' : 'Light Mode',
              style: TextStyle(fontSize: 24),
            ),
            
            const SizedBox(height: 20), 
            

            Transform.scale(
              scale: 2.0,
              child: CupertinoSwitch(
                value: themeProvider.isDarkMode,
                onChanged: (value) {
                  themeProvider.toggleTheme(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
