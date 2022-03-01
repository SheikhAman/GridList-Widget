import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: GridList(),
        ));
  }
}

class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      children: List.generate(100, (index) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.teal.shade200,
              border: Border.all(color: Colors.grey, width: 3.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        );
      }),
    );
  }
}
