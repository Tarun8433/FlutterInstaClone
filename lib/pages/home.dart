import 'package:flutter/material.dart';
import 'package:quiz/util/bubble_story_circle.dart';
import 'package:quiz/util/user_post.dart';

class Home extends StatelessWidget {
  final List people = ["Reju", "Rohan", "Ramya", "Tarun", "Arun", "Raju"];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 45, 0),
        title: Text('Instagram'),
        centerTitle: false,
        actions: [
          // Notification
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
            ),
          ),

          // Message
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.messenger_outline,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 105,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStoryCircle(text: people[index]);
              },
            ),
          ),
          
          Expanded(
            child: ListView.builder(itemCount: people.length, itemBuilder: (context, index){
              return UserPost(name: people[index]);
            }),
          )
        ],
      ),
    );
  }

  onPressed() {}
}
