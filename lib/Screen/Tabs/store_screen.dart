import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  /// here we create list of item to show data
  /// here we data change
  List<Map<String, dynamic>> items = [
    {"image": "assets/sell's item/bikes.png" , 
     "price" : "Rs:40000"
    },
    {"image": "assets/sell's item/Asus-ROG-Ally.webp" ,
      "price" : "Rs:2000"
    },
    {"image": "assets/sell's item/canon_eosr8.jpeg" ,
      "price" : "Rs:10000"
    },
    {"image": "assets/sell's item/cycle.webp" ,
      "price" : "Rs:5000"
    },
    {"image": "assets/sell's item/cycle.webp" ,
      "price" : "Rs:70000"
    },
    {"image": "assets/sell's item/Designer-Sofa-Set-in-Fabric-L-Shape_2.webp" ,
      "price" : "Rs:40000"
    },
    {"image": "assets/sell's item/laptopsunder500-2048px-5452.webp" ,
      "price" : "Rs:50000"
    },
    {"image": "assets/sell's item/mobile.webp" ,
      "price" : "Rs:10000"
    },
    {"image": "assets/sell's item/MUW43.jpeg" ,
      "price" : "Rs:2000"
    },
    {"image": "assets/sell's item/scorpio.webp" ,
      "price" : "Rs:600000"
    },
    {"image": "assets/sell's item/speaker.webp" ,
      "price" : "Rs:3000"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// app bar
        appBar: AppBar(
          title: Text(
            "Marketplace",
            style: myTexStyle30(),
          ),
          actions: const [
            Icon(
              Icons.person,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// sell and categories
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.edit_note_sharp,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Sell",
                              style: myTexStyle20(),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.menu_outlined,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Categories",
                              style: myTexStyle20(),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              /// Today's and location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's",
                      style: myTexStyle25(),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 25,
                          color: Colors.blueAccent,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Location",
                          style: myTexStyle25(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),

              /// Here we create gride view to show items and it's price
              GridView.builder(
                physics:NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2 ,
                    crossAxisSpacing: 10 ,
                    mainAxisSpacing: 5 ,
                    childAspectRatio: 5/6                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          Image.asset(items[index]["image"] , height: 200, width: 200, fit: BoxFit.cover,),
                          Text(items[index]["price"] , style: myTexStyle18(),)
                        ],
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}

/// this is my store screen
/// in this screen , we show sells items and price
/// DONE
/// CHECK
