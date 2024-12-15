import 'package:facebook_clone/Widgets/friend_request_card.dart';
import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            /// friends and search icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Friends",
                    style: myTexStyle30(textWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.search_rounded,
                    size: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 4),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "65 online",
                            style: myTexStyle20(),
                          ),
                        ],
                      ),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 4),
                      child: Text(
                        "Suggestions",
                        style: myTexStyle20(),
                      ),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 4),
                      child: Text(
                        "Your friends",
                        style: myTexStyle20(),
                      ),
                    ))
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            const Divider(
              thickness: 2,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Friend requests",
                        style: myTexStyle22(),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "300",
                        style: myTexStyle25(textColor: Colors.red),
                      ),
                    ],
                  ),
                  Text(
                    "Sell all",
                    style: myTexStyle22(textColor: Colors.blueAccent),
                  )
                ],
              ),
            ),

            /// here we show friends request
            /// create friend request card
            /// here we call friend request card
            FriendRequestCard(
              userName: 'Pooja sharma',
              userProfile: 'assets/Images/pexels-soldiervip-1386599.jpg',
              mul_1: 'assets/Images/pexels-luhras-2189566.jpg',
              mul_2:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            ),
            FriendRequestCard(
              userName: 'cuti@queen',
              userProfile: 'assets/Images/girl1.jpeg',
              mul_1: 'assets/Images/pexels-luhras-2189566.jpg',
              mul_2:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            ),
            FriendRequestCard(
              userName: '@pari__34',
              userProfile: 'assets/Images/girl2.jpg',
              mul_1:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
              mul_2: 'assets/Images/pexels-luhras-2189566.jpg',
            ),
            FriendRequestCard(
              userName: 'panda@here',
              userProfile: 'assets/Images/girl5.jpeg',
              mul_1: 'assets/Images/pexels-dana-tentis-118658-364382.jpg',
              mul_2: 'assets/Images/pexels-harsh-raj-gond-218020-1485031.jpg',
            ),
            FriendRequestCard(
              userName: 'Love@line',
              userProfile: 'assets/Images/girls3.jpg',
              mul_1: 'assets/Images/pexels-leonnebrito-1844012.jpg',
              mul_2:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            ),
            FriendRequestCard(
              userName: 'Love@line',
              userProfile: 'assets/Images/pexels-pixabay-247908.jpg',
              mul_1: 'assets/Images/pexels-leonnebrito-1844012.jpg',
              mul_2:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            ),
            FriendRequestCard(
              userName: 'Pushpa',
              userProfile: 'assets/Images/pexels-pixabay-219616.jpg',
              mul_1: 'assets/Images/pexels-leonnebrito-1844012.jpg',
              numMul: "123 mutual friends",
              mul_2:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            ),
            FriendRequestCard(
              userName: 'Pushpa',
              userProfile:
                  'assets/Images/pexels-nikki-williams-1761778-3334816.jpg',
              mul_1: 'assets/Images/pexels-leonnebrito-1844012.jpg',
              numMul: "123 mutual friends",
              mul_2:
                  'assets/Images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            ),
          ],
        )
      ],
    ));
  }
}

/// this is my friends screen
/// DONE FRIENDS SCREEN
/// CHECK
