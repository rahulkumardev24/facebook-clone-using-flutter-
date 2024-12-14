import 'package:facebook_clone/Screen/Tabs/friends_screen.dart';
import 'package:facebook_clone/Screen/Tabs/home_screen.dart';
import 'package:facebook_clone/Screen/Tabs/notifaction_screen.dart';
import 'package:facebook_clone/Screen/Tabs/profile_screen.dart';
import 'package:facebook_clone/Screen/Tabs/store_screen.dart';
import 'package:facebook_clone/Screen/Tabs/video_screen.dart';
import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              /// __________________________________________ AAP BAR ___________________________///
              title: Text(
                "facebook",
                style: myTexStyle30(
                    textColor: Colors.blueAccent, textWeight: FontWeight.bold),
              ),
              actions: [
                /// add icon
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.add_sharp,
                      color: Colors.white,
                      size: 30,
                    )),
                const SizedBox(
                  width: 5,
                ),

                /// search icon
                const Icon(
                  Icons.search_rounded,
                  size: 40,
                ),
                const SizedBox(
                  width: 5,
                ),

                /// messenger icon download from flat icon website
                /// messenger icon
                Image.asset(
                  "assets/Icons/chat.png",
                  height: 30,
                ),
                const SizedBox(
                  width: 5,
                )
              ],
              bottom: TabBar(
                  indicatorColor: Colors.blueAccent,
                  labelColor: Colors.blueAccent,
                  automaticIndicatorColorAdjustment: true,
                  tabs: [
                    const Tab(
                      icon: Icon(Icons.home_filled),
                    ),
                    const Tab(
                      icon: Icon(Icons.video_collection),
                    ),
                    const Tab(
                      icon: Icon(Icons.group),
                    ),
                    const Tab(
                      icon: Icon(Icons.storefront),
                    ),
                    const Tab(
                      icon: Icon(Icons.notifications),
                    ),
                    Tab(
                      icon: ClipOval(
                          child: Image.asset(
                        "assets/Images/girls3.jpg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ]),
            ),
            body: const TabBarView(children: [
              /// here we show all screen according to tab bar
              /// know create six screen according to tabs

              HomeScreen() ,
              VideoScreen() ,
              FriendsScreen() ,
              StoreScreen() ,
              NotifactionScreen() ,
              ProfileScreen() ,
            ]),
          )
      ),

      /// here we show tab bar
    );
  }
}

/// this is my dash board screen -> Main Screen
