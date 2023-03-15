import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/main.dart';

import 'components.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          shadowColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Comments',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              icon: const Icon(CupertinoIcons.paperplane),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const <Widget>[
              CommentCard(
                  url:
                      'https://th.bing.com/th/id/OIP.h0hPZzAziPf3v-srHQTdWQHaHa?pid=ImgDet&rs=1',
                  userId: "1",
                  userName: 'Rixkiansyaaaargh',
                  comment:
                      'This is a long paragraph that needs to be broken into multiple lines. We can use the textAlign and maxLines properties to achieve this.',
                  time: '1 d'),
              CommentCard(
                  url:
                      'https://thumbs.dreamstime.com/b/happy-smiling-young-woman-face-portrait-people-female-business-concept-66719084.jpg',
                  userId: "2",
                  userName: 'Cut Hawa Aulia Ramadhina',
                  comment:
                      'This is a long paragraph that needs to be broken into multiple lines. We can use the textAlign and maxLines properties to achieve this.',
                  time: '1 d'),
              CommentCard(
                  url:
                      'https://th.bing.com/th/id/OIP.h0hPZzAziPf3v-srHQTdWQHaHa?pid=ImgDet&rs=1',
                  userId: "1",
                  userName: 'Rixkiansyaaaargh',
                  comment:
                      'This is a long paragraph that needs to be broken into multiple lines. We can use the textAlign and maxLines properties to achieve this.',
                  time: '1 d'),
              CommentCard(
                  url:
                      'https://thumbs.dreamstime.com/b/happy-smiling-young-woman-face-portrait-people-female-business-concept-66719084.jpg',
                  userId: "2",
                  userName: 'Cut Hawa Aulia Ramadhina',
                  comment:
                      'This is a long paragraph that needs to be broken into multiple lines. We can use the textAlign and maxLines properties to achieve this.',
                  time: '1 d'),
              CommentCard(
                  url:
                      'https://th.bing.com/th/id/OIP.h0hPZzAziPf3v-srHQTdWQHaHa?pid=ImgDet&rs=1',
                  userId: "1",
                  userName: 'Rixkiansyaaaargh',
                  comment:
                      'This is a long paragraph that needs to be broken into multiple lines. We can use the textAlign and maxLines properties to achieve this.',
                  time: '1 d'),
              CommentCard(
                  url:
                      'https://thumbs.dreamstime.com/b/happy-smiling-young-woman-face-portrait-people-female-business-concept-66719084.jpg',
                  userId: "2",
                  userName: 'Cut Hawa Aulia Ramadhina',
                  comment:
                      'This is a long paragraph that needs to be broken into multiple lines. We can use the textAlign and maxLines properties to achieve this.',
                  time: '1 d'),
            ],
          ),
        ),
      ),
    );
  }
}
