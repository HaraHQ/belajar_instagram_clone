import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formatted_text/formatted_text.dart';
import 'package:instagram_clone/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          shadowColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Haragram',
            style: TextStyle(
              fontFamily: 'Satisfy',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.plus_square)),
            const SizedBox(width: 10.0),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
            const SizedBox(width: 10.0),
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.chat_bubble_text)),
            const SizedBox(width: 10.0),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Stories(),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                child: Column(children: const <Widget>[
                  PostCard(
                    userName: 'Rixkiansyaaaargh',
                    url:
                        'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    likes: 999,
                    postId: 1,
                    postComment: [],
                  ),
                  PostCard(
                    userName: 'cuthawaaulia',
                    url:
                        'https://images.pexels.com/photos/15554361/pexels-photo-15554361.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 8888,
                    postId: 2,
                    postComment: [],
                  ),
                  PostCard(
                    userName: 'anissafadilah',
                    url:
                        'https://images.pexels.com/photos/9437538/pexels-photo-9437538.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 1200,
                    postId: 3,
                    postComment: [],
                  ),
                  PostCard(
                    userName: 'infoserang',
                    url:
                        'https://images.pexels.com/photos/6858664/pexels-photo-6858664.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 10,
                    postId: 4,
                    postComment: [],
                  ),
                  PostCard(
                    userName: 'cutsarahnajja',
                    url:
                        'https://images.pexels.com/photos/5461575/pexels-photo-5461575.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 111,
                    postId: 5,
                    postComment: [],
                  ),
                  PostCard(
                    userName: 'cuthawaaulia',
                    url:
                        'https://images.pexels.com/photos/9828304/pexels-photo-9828304.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 8888,
                    postId: 6,
                    postComment: [],
                  ),
                  PostCard(
                    userName: 'cutrumaisha',
                    url:
                        'https://images.pexels.com/photos/15794810/pexels-photo-15794810.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 10000,
                    postId: 7,
                    postComment: [],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final dynamic userName;
  final dynamic url;
  final dynamic likes;
  final dynamic postId;
  final dynamic postComment;

  const PostCard(
      {required this.userName,
      required this.url,
      required this.likes,
      required this.postId,
      required this.postComment,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            PostUserInfo(
              userName: userName,
            ),
            Image.network(url),
            PostActions(id: postId),
            const PostComments(),
            const PostFooter(),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
    );
  }
}

class PostFooter extends StatelessWidget {
  const PostFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
        left: 15.0,
        right: 15.0,
        bottom: 15.0,
      ),
      child: Row(children: const <Widget>[
        Text(
          '11 hours ago',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          ' • ',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'See Translation',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ]),
    );
  }
}

class PostComments extends StatelessWidget {
  const PostComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              '999 likes',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            FormattedText(
              '*Hawa* Abi, hawa mau dong ini... 💖',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            FormattedText(
              '*Rixkiansyaaaargh* Siap pincres! 🤗💯',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}

class PostActions extends StatelessWidget {
  final dynamic id;
  const PostActions({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: const Text('like'),
                        content: Text(id),
                      ));
            },
            icon: const Icon(CupertinoIcons.heart),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: const Text('add comment'),
                        content: Text(id),
                      ));
            },
            icon: const Icon(CupertinoIcons.chat_bubble),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: const Text('share this post'),
                        content: Text(id),
                      ));
            },
            icon: const Icon(CupertinoIcons.paperplane),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: const Text('bookmarked'),
                        content: Text(id),
                      ));
            },
            icon: const Icon(CupertinoIcons.bookmark),
          ),
        )
      ],
    );
  }
}

class PostUserInfo extends StatelessWidget {
  final dynamic userName;
  const PostUserInfo({required this.userName, super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  border: Border.all(
                    strokeAlign: BorderSide.strokeAlignOutside,
                    width: 2.0,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png?20170328184010",
                    width: 36.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              userName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          StoryCircle(
              warnaCirle: Color.fromRGBO(255, 0, 0, 1),
              textCircle: 'Rizki',
              url:
                  'https://th.bing.com/th/id/OIP.h0hPZzAziPf3v-srHQTdWQHaHa?pid=ImgDet&rs=1'),
          StoryCircle(
              warnaCirle: Color.fromRGBO(200, 0, 0, 1),
              textCircle: 'Anissa',
              url:
                  'https://th.bing.com/th/id/OIP.vBMnF0lxenv7t0yrWDf1UgHaHa?pid=ImgDet&w=1000&h=1002&rs=1'),
          StoryCircle(
              warnaCirle: Color.fromRGBO(170, 0, 0, 1),
              textCircle: 'Hawa',
              url:
                  'https://thumbs.dreamstime.com/b/happy-smiling-young-woman-face-portrait-people-female-business-concept-66719084.jpg'),
          StoryCircle(
              warnaCirle: Color.fromRGBO(120, 0, 0, 1),
              textCircle: 'Sarah',
              url:
                  'https://thumbs.dreamstime.com/b/beautiful-young-lady-portrait-21351316.jpg'),
          StoryCircle(
              warnaCirle: Color.fromRGBO(0, 255, 0, 1),
              textCircle: 'Rumaisha',
              url:
                  'https://th.bing.com/th/id/OIP.qO6fz62ajvFWOytu7SC-sQHaHa?pid=ImgDet&w=800&h=800&rs=1'),
          StoryCircle(
              warnaCirle: Color.fromRGBO(255, 200, 0, 1),
              textCircle: 'Imas',
              url:
                  'https://technofaq.org/wp-content/uploads/2016/05/kristy.jpg'),
          StoryCircle(
              warnaCirle: Color.fromRGBO(0, 0, 255, 1),
              textCircle: 'Olis',
              url:
                  'https://thumbs.dreamstime.com/b/happy-smiling-young-woman-face-portrait-people-female-business-concept-65610841.jpg'),
        ],
      ),
    );
  }
}

class StoryCircle extends StatelessWidget {
  final Color warnaCirle;
  final dynamic textCircle;
  final dynamic url;

  const StoryCircle(
      {required this.warnaCirle,
      required this.textCircle,
      required this.url,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  border: Border.all(
                    strokeAlign: BorderSide.strokeAlignOutside,
                    width: 2.0,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Image.network(
                    url,
                    width: 62.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(textCircle,
                style: const TextStyle(fontSize: 13, letterSpacing: 1.4))
          ],
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                    title: const Text('test'),
                    content: Text(textCircle),
                  ));
        },
      ),
    );
  }
}
