

import 'package:flutter/material.dart';

import '../model/book.dart';

class BookDetails extends StatelessWidget {
  final Book book;

  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff5f579),
        title: Text(book.nameBook,
            style: Theme.of(context).textTheme.titleLarge,),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book.imageBook,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Author: ${book.author}',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              '${book.description}'
            )
          ],
        ),
      ),
    );
  }
}