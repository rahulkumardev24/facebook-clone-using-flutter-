import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendRequestCard extends StatefulWidget {
  /// create constructor
  String userName;
  String userProfile;
  String mul_1;
  String mul_2;
  String? numMul;

  FriendRequestCard({
    super.key,
    required this.userName,
    required this.userProfile,
    required this.mul_1,
    required this.mul_2,
    this.numMul,
  });

  @override
  State<FriendRequestCard> createState() => _FriendRequestCardState();
}

class _FriendRequestCardState extends State<FriendRequestCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          /// user profile
          ClipOval(
              child: Image.asset(
            widget.userProfile,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName,
                  style: myTexStyle20(),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Stack(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              widget.mul_1,
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 15,
                            child: ClipOval(
                              child: Image.asset(
                                widget.mul_2,
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            child: Text(
                              widget.numMul ?? "10 mutual friends",
                              style: myTexStyle18(textColor: Colors.black45),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),

                /// confirm button and Delete button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white),
                        child: Text(
                          "Conform",
                          style: myTexStyle20(textColor: Colors.white),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.black12,
                        ),
                        child: Text(
                          "Conform",
                          style: myTexStyle20(),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// complete check
