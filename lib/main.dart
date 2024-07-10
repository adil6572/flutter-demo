// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';
import 'package:myapp/HomeScreen.dart';

// Main Function
void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const MyApp());
}

// Widget is used to create UI in flutter framework.

/* StatelessWidget is a widget, which does not maintain
any state of the widget. */

/* MyApp extends StatelessWidget and overrides its
build method. */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // title of the application
        title: 'Hello World Demo Application',
        // theme of the widget
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        // Inner UI of the application
        home: const HomeScreen());
  }
}
