import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class UserPosts extends StatelessWidget {
//   bool liked = false;
//
//   pressed() {}
//
//   final String name;
//
//   UserPosts({required this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Profile picture
//               Row(
//                 children: [
//                   Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey[300],
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   // name
//                   Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Icon(Icons.more_vert),
//             ],
//           ),
//         ),
//         Container(
//           height: 400,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/user_post_1.png'),
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () => pressed(),
//                     icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
//                         color: liked ? Colors.red : Colors.grey),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: Icon(Icons.chat_bubble_outline_outlined),
//                   ),
//                   Icon(Icons.share),
//                 ],
//               ),
//               Icon(Icons.bookmark_outlined),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

class UserPost extends StatefulWidget {
  const UserPost({Key? key}) : super(key: key);

  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  bool liked = false;

  pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile picture
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                        image: DecorationImage(
                            image: AssetImage('assets/images/avatar.png'))),
                  ),
                  SizedBox(width: 10),
                  // name
                  Text('samuel', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/user_post_1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => pressed(),
                    icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
                        color: liked ? Colors.red : Colors.black),
                  ),
                  Icon(Icons.chat_bubble_outline_outlined),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                  )
                ],
              ),
              Icon(Icons.bookmark_outlined),
            ],
          ),
        ),
        // liked by
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                'Akpan victor',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        // caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 6.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Akpan victor',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        ' I\'m an aspiring flutter developr I hope I can get a job soon')
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Row(
// children: [
// Text(
// 'Akpan victor',
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// Text(
// ' I\'m an aspiring flutter developr I hope I can get a job soon'),
// ],
// ),
