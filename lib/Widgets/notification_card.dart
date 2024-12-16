import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/cupertino.dart';

class NotificationCard extends StatefulWidget {
  /// here we create constructor
  String userProfile;
  String icon;
  String title;
  String? day;

  NotificationCard(
      {super.key,
      required this.userProfile,
      required this.title,
      required this.icon,
      this.day});

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          /// user profile and icon
          SizedBox(
            height: 120,
            child: Stack(
              children: [
                ClipOval(
                    child: Image.asset(
                  widget.userProfile,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                )),
                Positioned(
                    bottom: 20,
                    right: 0,
                    child: Image.asset(
                      widget.icon,
                      height: 30,
                      width: 30,
                    ))
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: myTexStyle20(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.day ?? "1d",
                  style: myTexStyle18(),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
