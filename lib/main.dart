import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/components.dart';
import 'package:badges/badges.dart' as badges;
import 'package:lottie/lottie.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Splash Screen',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(160.0),
          color: Colors.white,
          child: Lottie.asset(
            'assets/lottie/instagram-logo.json',
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: badges.Badge(
                showBadge: true,
                position: badges.BadgePosition.topEnd(top: 0, end: 5),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                badgeStyle: const badges.BadgeStyle(
                  elevation: 0,
                  badgeColor: Colors.red,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.plus_square),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: badges.Badge(
                showBadge: false,
                position: badges.BadgePosition.topEnd(top: 0, end: 5),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                badgeStyle: const badges.BadgeStyle(
                  elevation: 0,
                  badgeColor: Colors.red,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.heart),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: badges.Badge(
                showBadge: true,
                position: badges.BadgePosition.topEnd(top: 0, end: 5),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                badgeStyle: const badges.BadgeStyle(
                  elevation: 0,
                  badgeColor: Colors.red,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chat_bubble_text),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Stories(),
              Container(
                height: 1.0,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
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
                    liked: true,
                    postId: 1,
                    postComment: [],
                    bookmarked: true,
                  ),
                  PostCard(
                    userName: 'cuthawaaulia',
                    url:
                        'https://images.pexels.com/photos/15554361/pexels-photo-15554361.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 8888,
                    liked: true,
                    postId: 2,
                    postComment: [],
                    bookmarked: false,
                  ),
                  PostCard(
                    userName: 'anissafadilah',
                    url:
                        'https://images.pexels.com/photos/9437538/pexels-photo-9437538.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 1200,
                    liked: false,
                    postId: 3,
                    postComment: [],
                    bookmarked: false,
                  ),
                  PostCard(
                    userName: 'infoserang',
                    url:
                        'https://images.pexels.com/photos/6858664/pexels-photo-6858664.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 10,
                    liked: false,
                    postId: 4,
                    postComment: [],
                    bookmarked: true,
                  ),
                  PostCard(
                    userName: 'cutsarahnajja',
                    url:
                        'https://images.pexels.com/photos/5461575/pexels-photo-5461575.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 111,
                    liked: true,
                    postId: 5,
                    postComment: [],
                    bookmarked: false,
                  ),
                  PostCard(
                    userName: 'cuthawaaulia',
                    url:
                        'https://images.pexels.com/photos/9828304/pexels-photo-9828304.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 8888,
                    liked: false,
                    postId: 6,
                    postComment: [],
                    bookmarked: false,
                  ),
                  PostCard(
                    userName: 'cutrumaisha',
                    url:
                        'https://images.pexels.com/photos/15794810/pexels-photo-15794810.jpeg?auto=compress&cs=tinysrgb&w=500',
                    likes: 10000,
                    liked: true,
                    postId: 7,
                    postComment: [],
                    bookmarked: true,
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
