
import 'package:book_share/repository/book_repository.dart';
import 'package:book_share/widgets/book_details.dart';
import 'package:flutter/material.dart';

import '../model/book.dart';

class BookGridWidget extends StatefulWidget {
  const BookGridWidget({super.key});
  @override
  _BookGridWidgetState createState() {
    return _BookGridWidgetState();
  }
}

class _BookGridWidgetState extends State<BookGridWidget> {
  final BookRepository _bookRepository = BookRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Book>?>(
      future: _bookRepository.getBooks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          List<Book> books = snapshot.data!;
          return GridView.builder(
            itemCount: books.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 0.5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Container(

                  width: 300,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Color(0xFFEAE5DE),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),

                  child: InkWell(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(flex: 8,child:
                      Image.network(
                        books[index].imageBook,
                        fit: BoxFit.cover,
                      ),
                      ),

                      const SizedBox(height: 10.0),
                      Expanded(
                        child: Text(
                          books[index].nameBook,
                          style: const TextStyle(fontSize: 15.0,),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(books[index].author),
                    ],
                  ),
                  onTap:() {Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookDetails(book: books[index])));},)
                  ,
                ),
              );
            },
          );
        } else {
          return const Text('No data available');
        }
      },
    );
  }
}
