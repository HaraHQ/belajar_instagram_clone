import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formatted_text/formatted_text.dart';

import 'detail_page.dart';

class UserAvatar extends StatelessWidget {
  final String url;
  final double size;

  const UserAvatar({required this.url, required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 6.0,
      height: size + 6.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.amber,
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        child: Image.network(
          url,
          width: size,
          loadingBuilder: (ctx, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            } else {
              return Image.asset(
                'assets/images/lazy-loading.gif',
                width: 62.0,
              );
            }
          },
        ),
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
              child: UserAvatar(url: url, size: 62.0),
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
              title: const Text('open story of'),
              content: Text(textCircle),
            ),
          );
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final dynamic userName;
  final dynamic url;
  final dynamic likes;
  final bool liked;
  final dynamic postId;
  final dynamic postComment;
  final bool bookmarked;

  const PostCard(
      {required this.userName,
      required this.url,
      required this.likes,
      required this.liked,
      required this.postId,
      required this.postComment,
      required this.bookmarked,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostUserInfo(
          userName: userName,
        ),
        GestureDetector(
          child:
              Image.network(url, loadingBuilder: (ctx, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            } else {
              return Image.asset(
                'assets/images/lazy-loading.gif',
              );
            }
          }),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailPage()),
            );
          },
        ),
        PostActions(id: postId, liked: liked, bookmarked: bookmarked),
        const PostComments(),
        const PostFooter(),
      ],
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
  final bool liked;
  final bool bookmarked;
  const PostActions(
      {required this.id,
      required this.liked,
      required this.bookmarked,
      super.key});

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
                        content: Text(id.toString()),
                      ));
            },
            icon: liked
                ? const Icon(CupertinoIcons.heart_fill, color: Colors.red)
                : const Icon(CupertinoIcons.heart),
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
                        content: Text(id.toString()),
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
                        content: Text(id.toString()),
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
                        content: Text(id.toString()),
                      ));
            },
            icon: bookmarked
                ? const Icon(CupertinoIcons.bookmark_fill)
                : const Icon(CupertinoIcons.bookmark),
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
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: UserAvatar(
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png?20170328184010',
                size: 36.0,
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
            const Spacer(),
            DropdownButton(
              icon: const Icon(CupertinoIcons.ellipsis_vertical),
              // Array list of items
              items: [
                'Unfollow',
                'Hide',
                'Report',
              ].map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (dynamic newValue) {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('what to do'),
                    content: Text(newValue),
                  ),
                );
              },
            ),
          ],
        ),
      ],
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
    return Column(
      children: <Widget>[
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.only(
              top: 10.0,
              bottom: 5.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: UserAvatar(url: url, size: 45.0),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                          textAlign: TextAlign.start,
                          maxLines: 60,
                        ),
                        const SizedBox(
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
                ),
              ],
            ),
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
    );
  }
}
