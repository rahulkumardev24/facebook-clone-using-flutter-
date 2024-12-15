import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../Widgets/user_video_post_card.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Video",
                    style: myTexStyle30(textWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            const Divider(
              thickness: 3,
            ),

            /// here we call user video post card
            /// in this image place we replace with video
            /// here we call multiple time
            const SizedBox(
              height: 10,
            ),
            UserVideoPostCard(
              userProfile: 'assets/Images/girls3.jpg',
              userPost: 'assets/videos/3209213-uhd_3840_2160_25fps.mp4',
              userName: 'Priya',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            UserVideoPostCard(
              userProfile:
                  'assets/Images/pexels-harsh-raj-gond-218020-1485031.jpg',
              userPost: 'assets/videos/2616637-hd_1920_1080_30fps.mp4',
              userName: 'Priya',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            UserVideoPostCard(
              userProfile:
                  'assets/Images/pexels-harsh-raj-gond-218020-1485031.jpg',
              userPost: 'assets/videos/3209213-uhd_3840_2160_25fps.mp4',
              userName: 'Priya',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            UserVideoPostCard(
              userProfile:
                  'assets/Images/pexels-harsh-raj-gond-218020-1485031.jpg',
              userPost: 'assets/videos/4880362-uhd_4096_2160_25fps.mp4',
              userName: 'Priya',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    ));
  }
}

/// you can add more data
/// complete check
