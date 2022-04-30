import 'package:flutter/material.dart';
import 'package:instagram/util/UserPost.dart';
import 'package:instagram/util/bubbleStories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'your story',
    'overmale',
    'joseph enoch',
    'Adeniji',
    'akpan victor',
    'tishe',
    'david Adeniji'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add, color: Colors.black),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite, color: Colors.black),
                ),
                Icon(Icons.share, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          // Posts
          //UserPosts(name: 'Samuel'),

          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost();
                }),
          )

          //UserPost(),
        ],
      ),
    );
  }
}
