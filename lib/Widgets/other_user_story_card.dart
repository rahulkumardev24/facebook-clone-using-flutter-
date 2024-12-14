import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/custom_text_style.dart';

class OtherUserStoryCard extends StatefulWidget {
  /// CREATE CONSTRUCTOR
  String userName;
  String imagePath;

  OtherUserStoryCard(
      {super.key, required this.userName, required this.imagePath});

  @override
  State<OtherUserStoryCard> createState() => _OtherUserStoryCardState();
}

class _OtherUserStoryCardState extends State<OtherUserStoryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 120,
      child: Card(
        child: Stack(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(widget.imagePath), fit: BoxFit.cover),
                    border: Border.all(color: Colors.blueAccent, width: 2)),
              ),
            ),
            Positioned(
                bottom: 4,
                left: 5,
                child: Text(
                  widget.userName,
                  style: myTexStyle15(textColor: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
