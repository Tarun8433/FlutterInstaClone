import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 159, 159, 159),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '03:22',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // menu Icon
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_outlined,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: const Color.fromARGB(255, 181, 181, 181),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // menu Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),

                // menu Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline,
                      color: Color.fromARGB(255, 0, 76, 0)),
                ),

                // menu Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Color.fromARGB(255, 0, 76, 0),
                  ),
                ),
              ],
            ),
            // menu Icon
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Color.fromARGB(255, 0, 76, 0),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                ' Tarun Sahani, Rahul',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(
                ' 57 Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: RichText(
                  text: TextSpan(
                    text: 'Hello ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'every one',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' this my first post '),
                    ],
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
