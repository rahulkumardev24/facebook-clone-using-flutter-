import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPostCard extends StatefulWidget {
  /// create constructor
  String userProfile;
  String userPost;
  String? postDate;
  String? numLike;
  String? numComment;
  String? numShare;
  String userName;

  UserPostCard(
      {super.key,
      required this.userProfile,
      required this.userPost,
      required this.userName,
      this.numComment,
      this.numLike,
      this.numShare,
      this.postDate});

  @override
  State<UserPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserPostCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// user profile
                  ClipOval(
                    child: Image.asset(
                      widget.userProfile,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// user name
                      Text(
                        widget.userName,
                        style: myTexStyle18(textWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          /// date of post
                          /// if user is not pass the date then show Today
                          Text(
                            widget.postDate ?? "Today",
                            style: myTexStyle18(),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.group,
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        /// user post
        Image.asset(
          widget.userPost,
          width: double.infinity,
          fit: BoxFit.cover,
          height: 500,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// like and heart icon
              SizedBox(
                width: 100,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/Icons/like.png",
                      height: 30,
                    ),
                    Positioned(
                        left: 20,
                        child: Image.asset(
                          "assets/Icons/heart (2).png",
                          height: 30,
                        )),

                    /// number of likes
                    /// If user is not pass the number  of likes then show 10K
                    Positioned(
                        left: 55,
                        child: Text(
                          widget.numLike ?? "10K",
                          style: myTexStyle18(textColor: Colors.black87),
                        )),
                  ],
                ),
              ),

              /// comments and share
              Row(
                children: [
                  Text(
                    widget.numComment ?? "10K comments",
                    style: myTexStyle15(textColor: Colors.black54),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.numShare ?? "10 shares",
                    style: myTexStyle15(textColor: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        /// line comment send share
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// like
              Row(
                children: [
                  const Icon(Icons.thumb_up_alt_outlined),
                  Text(
                    "Like",
                    style: myTexStyle15(),
                  )
                ],
              ),

              /// comment
              Row(
                children: [
                  const Icon(Icons.chat_bubble_outline),
                  Text(
                    "Comment",
                    style: myTexStyle15(),
                  )
                ],
              ),

              /// send
              Row(
                children: [
                  const Icon(Icons.share),
                  Text(
                    "Send",
                    style: myTexStyle15(),
                  )
                ],
              ),

              Row(
                children: [
                  const Icon(Icons.mobile_screen_share_rounded),
                  Text(
                    "share",
                    style: myTexStyle15(),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}

/// before creating constructor check the code
/// DONE CHECK
