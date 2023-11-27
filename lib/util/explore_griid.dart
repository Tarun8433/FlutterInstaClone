import 'package:flutter/material.dart';

class ExploreTheGred extends StatelessWidget {
  const ExploreTheGred({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(color: Colors.deepPurple[100],),
          );
        });
  }
}
