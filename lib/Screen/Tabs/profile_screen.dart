import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  /// Here we create list for showing grid view
  List<Map<String, dynamic>> cate = [
    /// fill the data
    {"icon": "assets/Icons/rotate (2).png", "title": "Memories"},
    {"icon": "assets/Icons/bookmark.png", "title": "Saved"},
    {"icon": "assets/Icons/groups.png", "title": "Groups"},
    {"icon": "assets/Icons/video.png", "title": "Video"},
    {"icon": "assets/Icons/shop.png", "title": "Marketplace"},
    {"icon": "assets/Icons/friend.png", "title": "Friends(97 online)"},
    {"icon": "assets/Icons/feed.png", "title": "Feeds"},
    {"icon": "assets/Icons/important-date.png", "title": "Events"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),

          /// menu and icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: myTexStyle30(),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),

          /// card user profile and and user name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/pexels-soldiervip-1386599.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Priya sharma",
                    style: myTexStyle25(),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          /// your shortcuts
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Your shortcuts",
              style: myTexStyle18(),
            ),
          ),

          /// horizontal user cards
          SizedBox(
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("assets/Images/girl1.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.group,
                                color: Colors.blueAccent,
                              )))
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("assets/Images/girl2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.group,
                                color: Colors.blueAccent,
                              )))
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("assets/Images/girl5.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.group,
                                color: Colors.blueAccent,
                              )))
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage("assets/Images/girls3.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.group,
                                color: Colors.blueAccent,
                              )))
                    ]),
                  ],
                ),
              )),

          /// ____________________________________GRID VIEW __________________________________///
          /// here we create grid view to categories
          SizedBox(
            height: 380,
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cate.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              cate[index]['icon'],
                              height: 30,
                            ),
                            Text(
                              cate[index]['title'],
                              style: myTexStyle18(),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),

          /// See More Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "See more",
                    style: myTexStyle18(),
                  )),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.help,
              size: 30,
            ),
            title: Text(
              "Help & support",
              style: myTexStyle20(),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down_rounded),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text(
              "Setting & privacy",
              style: myTexStyle20(),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down_rounded),
          ),
          ListTile(
            leading: const Icon(
              Icons.category,
              size: 30,
            ),
            title: Text(
              "Professional access",
              style: myTexStyle20(),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down_rounded),
          ),
          ListTile(
            leading: const Icon(
              Icons.dataset_outlined,
              size: 30,
            ),
            title: Text(
              "Professional access",
              style: myTexStyle20(),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down_rounded),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "Log out",
                    style: myTexStyle18(),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
  }
}

/// ___________________________COMPLETE______________________________///
/// CHECK Complete code
