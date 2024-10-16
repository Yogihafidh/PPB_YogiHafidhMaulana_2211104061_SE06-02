import 'package:flutter/material.dart';
import 'package:pertemuan6/custom.dart';
import 'package:pertemuan6/flexible_expanded.dart';
import 'package:pertemuan6/jenis_list.dart';

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
      home: FlexibleExpanded(),

      // JenisListView()
      // Custom()
    );
  }
}