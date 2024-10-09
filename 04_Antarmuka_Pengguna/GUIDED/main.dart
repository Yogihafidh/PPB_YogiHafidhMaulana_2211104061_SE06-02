import 'package:flutter/material.dart';
import 'package:praktikum4/gridview.dart';
import 'package:praktikum4/listview.dart';
import 'package:praktikum4/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ListViewScreen()

        // GridViewApp(),

        // StackScreen()

        );
  }
}
