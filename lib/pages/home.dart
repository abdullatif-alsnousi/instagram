import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/user_posts.dart';
import '../util/text_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/instagram.svg',
              height: 40,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.add_box_rounded, size: 30),
                  onTap: () {
                    // choose page to go to
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: InkWell(
                    //child: const Icon(Icons.electric_bolt_rounded, size: 30),
                    child: SvgPicture.asset(
                      'assets/svg/message.svg',
                      height: 25,
                      fit: BoxFit.fitWidth,
                      color: Colors.white,
                    ),
                    onTap: () {
                      // choose page to go to
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // Stories
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(
                  text: people[index],
                  storyImage: images[index],
                );
              },
            ),
          ),

          //Posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                    userImage: images[index],
                    postImage: postImages[index],
                    postLiked: postLiked[index],
                    postNumberLiked: postNumberLiked[index],
                    isLiked: true,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
