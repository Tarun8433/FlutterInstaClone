import 'package:flutter/material.dart';

import '../util/bubble_story_circle.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final List people = ["Reju", "Rohan", "Ramya", "Tarun", "Arun", "Raju"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 0),
        title: const Text('tarun_shani'),
        centerTitle: false,
        actions: [
          // Add
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_rounded,
              size: 24.0,
            ),
          ),

          // Message
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BubbleStoryCircle(text: 'Tarun Sahani'),

                // post
                Column(
                  children: [Text('30'), Text('Post')],
                ),

                // post
                Column(
                  children: [Text('30'), Text('Followers')],
                ),

                // post
                Column(
                  children: [Text('30'), Text('Following')],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Hi it's me Tarun with a new Insta Id"),
                  Text("Do Follow Me"),
                  Text("www.insta.com"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 45, 0)),
                  onPressed: () {},
                  child: const Text('       Edit profile       '),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 45, 0)),
                  onPressed: () {},
                  child: const Text('       Share profile       '),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 45, 0)),
                  onPressed: () {},
                  child: const Icon(Icons.add_to_photos),
                ),
              ],
            ),
            Container(
              height: 105,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStoryCircle(text: people[index]);
                  }),
            ),
            NavigationBar(destinations: NavigationDestination(icon: Icon(Icons.abc),label: "abc",))
          ],
        ),
      ),
    );
  }
}
