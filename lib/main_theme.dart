import 'package:book_share/widgets/book_grid.dart';
import 'package:book_share/widgets/my_grid-widget.dart';
import 'package:flutter/material.dart';

import 'utils/theme.dart';

class MainTheme extends StatelessWidget {
  const MainTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFEAE5DE),
          title: Text(
        'Список доступных книг',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: BookGridWidget(),
      ),
    );
  }
}
