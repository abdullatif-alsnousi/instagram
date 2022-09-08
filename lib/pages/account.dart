import 'package:flutter/material.dart';
import 'package:instagram/util/account_tab2.dart';
import 'package:instagram/util/account_tab3.dart';
import 'package:instagram/util/account_tab4.dart';
import 'package:instagram/util/bubble_stories.dart';

import '../util/account_tab1.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

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
              'abdullatif.alsnousi',
              style: TextStyle(fontSize: 24),
            ),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 35,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // choose page to go to
                  },
                  child: const Icon(Icons.add_box_outlined, size: 30),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(Icons.menu, size: 30),
                ),
              ],
            )
          ],
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Profile Picture
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/personal.jpg'),
                          fit: BoxFit.cover,
                        ),
                        // color: Colors.grey[300],
                        // shape: BoxShape.circle,
                      ),
                    ),

                    // number of posts, followers, following
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Text(
                                '210',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('posts'),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                '3250',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('followers'),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                '540 ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('following'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Name and bio
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Abdullatif Alsnousi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text('i programmer & web developer'),
                        ),
                        Text(
                          'https://abdullatif.ly/',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Center(
                            child: Text('Edit Profile'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Center(
                            child: Text('Ad Tools'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Center(
                            child: Text('insights'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // stories highlight

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  children: const [
                    BubbleStories(
                      text: 'Turky 2020',
                      storyImage: 'assets/images/story-1.jpg',
                    ),
                    BubbleStories(
                        text: 'Turky 2021',
                        storyImage: 'assets/images/story-2.jpg'),
                    BubbleStories(
                        text: 'Lamah CO',
                        storyImage: 'assets/images/story-3.jpg'),
                    BubbleStories(
                        text: 'Archive',
                        storyImage: 'assets/images/story-4.jpg'),
                    // BubbleStories(text: 'Archive'),
                  ],
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on),
                  ),
                  Tab(
                    icon: Icon(Icons.video_collection_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                    AccountTab3(),
                    AccountTab4(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
