

import 'package:flutter/material.dart';

class MyGridWidget extends StatelessWidget{
  const MyGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 1
        ),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(0, 3)
                  )
                ]
              ),
              child: Text('ghbdt'),
            )
          );
        });
  }

}