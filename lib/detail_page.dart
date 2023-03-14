import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formatted_text/formatted_text.dart';
import 'package:instagram_clone/main.dart';

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

class CommentCard extends StatelessWidget {
  final dynamic url;
  final String userId;
  final String userName;
  final dynamic comment;
  final dynamic time;

  const CommentCard(
      {required this.url,
      required this.userId,
      required this.userName,
      required this.comment,
      required this.time,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 68.0, top: 3.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormattedText(
                        '*$userName*',
                        style:
                            const TextStyle(fontSize: 16, letterSpacing: 0.6),
                      ),
                      Text(
                        comment,
                        style: const TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.6,
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 60,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.6,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          width: 2.0,
                          color: Colors.purple,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: Image.network(
                          url,
                          width: 45.0,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('open user page'),
                  content: Text(userId),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
