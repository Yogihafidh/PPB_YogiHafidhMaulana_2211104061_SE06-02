import 'package:flutter/material.dart';

class GridViewApp extends StatefulWidget {
  const GridViewApp({super.key});

  @override
  State<GridViewApp> createState() => _GridViewAppState();
}

class _GridViewAppState extends State<GridViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prakrikum 4"),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Icon(Icons.add),
                  Text("Grid view 1"),
                ],
              ),
              color: Colors.amberAccent,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Grid view 1"),
                  Icon(Icons.ad_units),
                ],
              ),
              color: Colors.green,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Grid view 1"),
              color: Colors.blue,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Grid view 1"),
              color: Colors.purple,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Grid view 1"),
              color: Colors.orange,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Grid view 1"),
              color: Colors.brown,
            )
          ]),
    );
  }
}
