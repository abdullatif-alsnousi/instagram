// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class UserPosts extends StatefulWidget {
  final String name;
  final String userImage;
  final String postImage;
  final String postLiked;
  final String postNumberLiked;
  bool isLiked = false;

  UserPosts(
      {Key? key,
      required this.name,
      required this.postImage,
      required this.userImage,
      required this.postLiked,
      required this.isLiked,
      required this.postNumberLiked})
      : super(key: key);

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile picture
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(widget.userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // name
                  Text(
                    widget.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, size: 30),
            ],
          ),
        ),

        //posts
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.postImage),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //below the post => like buttons & comments
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    child: Icon(
                      Icons.favorite_rounded,
                      size: 30,
                      color: widget.isLiked ? Colors.red : Colors.grey,
                    ),
                    onTap: () {
                      setState(() {
                        widget.isLiked = !widget.isLiked;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    //child: Icon(Icons.chat_bubble_outline, size: 30),

                    child: SvgPicture.asset(
                      'assets/svg/comment.svg',
                      height: 35,
                      fit: BoxFit.fitWidth,
                      color: Colors.white,
                    ),
                  ),

                  //const Icon(Icons.near_me_outlined, size: 30),
                  SvgPicture.asset(
                    'assets/svg/interface.svg',
                    height: 25,
                    fit: BoxFit.fitWidth,
                    color: Colors.white,
                  ),
                ],
              ),
              const Icon(Icons.bookmark, size: 30),
            ],
          ),
        ),

        // liked by
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              const Text('liked by '),
              Text(
                widget.postLiked,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and '),
              Text(
                widget.postNumberLiked,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        // caption
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8.0, right: 5.0),
          child: RichText(
            text: TextSpan(
              // style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: widget.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                    text:
                        ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'),
              ],
            ),
          ),
        ),
        // comments
      ],
    );
  }
}
