import 'package:facebook_clone/Widgets/notification_card.dart';
import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class NotifactionScreen extends StatefulWidget {
  const NotifactionScreen({super.key});

  @override
  State<NotifactionScreen> createState() => _NotifactionScreenState();
}

class _NotifactionScreenState extends State<NotifactionScreen> {
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

          /// notifications and search icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: myTexStyle30(),
                ),
                const Icon(
                  Icons.search_rounded,
                  size: 30,
                )
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "New",
              style: myTexStyle25(),
            ),
          ),

          /// here show notification card
          /// create notification
          /// here we call notification card
          /// data change here
          NotificationCard(
            userProfile:
                'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874788.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),

          NotificationCard(
            userProfile:
                'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
          NotificationCard(
            userProfile: 'assets/Images/pexels-minan1398-941206.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
          NotificationCard(
            userProfile:
                'assets/Images/pexels-nikki-williams-1761778-3334816.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
          NotificationCard(
            userProfile: 'assets/Images/pexels-olenagoldman-1021693.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
          NotificationCard(
            userProfile: 'assets/Images/pexels-pixabay-219616.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
          NotificationCard(
            userProfile: 'assets/Images/pexels-pixabay-247908.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
          NotificationCard(
            userProfile: 'assets/Images/pexels-soldiervip-1372137.jpg',
            icon: 'assets/Icons/chat (1).png',
            title: "Rahul mentioned you and other in a comment in username ",
          ),
        ],
      ),
    ));
  }
}

/// NOTIFICATION SCREEN COMPLETE
