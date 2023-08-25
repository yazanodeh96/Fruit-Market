import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../Colors.dart';
import '../../../custom_card.dart';
import '../../../single_fruit.dart';

// import 'colors.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'custom_card.dart';
// import 'app_home.dart';
// import 'package:fruits_ui/single_fruit.dart';
class Vegetabels extends StatefulWidget {
  const Vegetabels({super.key});

  @override
  State<Vegetabels> createState() => _VegetabelsState();
}

class _VegetabelsState extends State<Vegetabels> with TickerProviderStateMixin {
  int selectIndex = 0;
  void onTap(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Text("Vegetabels"),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Row(children: [
            Container(
              padding: const EdgeInsets.only(
                left: 21.0,
              ),
              child: const Text(
                "Organic Vegetabels",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  // left: 21.0,
                  ),
              child: const Text(
                " (20% off)",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ]),
          Container(
            padding: const EdgeInsets.only(
              left: 21.0,
            ),
            child: const Text(
              " Pick up from organic",
              style: TextStyle(
                fontSize: 12.0,
                // fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: MasonryGridView(
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleFruit(
                            singleFruitImage: 'assets/images/tomato.png',
                            singleFruitPrice: 2.45,
                            singleFruitName: 'Tomatoo',
                            singleFruitDescription:
                                "Tomatoo's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                            singleFruitBackground: AppColor.strawberryCardColor,
                          ),
                        ),
                      );
                    },
                    child: CustomCard(
                      height: 500.0,
                      customColor: AppColor.strawberryCardColor,
                      customImage: 'assets/images/tomato.png',
                      customButtonColor: AppColor.strawberryButtonColor,
                      fruitName: "tomato",
                      fruitUnit: "1 kg",
                      fruitPrice: "\$2.45",
                      // rating: 3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleFruit(
                            singleFruitImage: 'assets/images/khyar.png',
                            singleFruitPrice: 1.52,
                            singleFruitName: 'khyaar',
                            singleFruitDescription:
                                "Cucumber's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                            singleFruitBackground: AppColor.pineappleCardColor,
                          ),
                        ),
                      );
                    },
                    child: CustomCard(
                      height: 290.0,
                      customColor: AppColor.pineappleCardColor,
                      customImage: 'assets/images/khyar.png',
                      customButtonColor: AppColor.pineappleButtonColor,
                      fruitName: "khyaar",
                      fruitUnit: "1 lb",
                      fruitPrice: "\$1.52",
                      // rating: 3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleFruit(
                            singleFruitImage: 'assets/images/blueberry.png',
                            singleFruitPrice: 4.07,
                            singleFruitName: 'Blueberries',
                            singleFruitDescription:
                                "blueberries's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                            singleFruitBackground:
                                AppColor.blueBerriesCardColor,
                          ),
                        ),
                      );
                    },
                    child: CustomCard(
                      height: 320.0,
                      customColor: AppColor.blueBerriesCardColor,
                      customImage: 'assets/images/blueberry.png',
                      customButtonColor: AppColor.blueBerriesButtonColor,
                      fruitName: "Blueberries",
                      fruitUnit: "1 kg",
                      fruitPrice: "\$4.07",
                      // rating: 3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleFruit(
                            singleFruitImage:
                                'assets/images/Watermelon-Free-Download-PNG.png',
                            singleFruitPrice: 5.07,
                            singleFruitName: 'Watermelon',
                            singleFruitDescription:
                                "WaterMelon's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                            singleFruitBackground: AppColor.watermelonCardColor,
                          ),
                        ),
                      );
                    },
                    child: CustomCard(
                      height: 285.0,
                      customColor: AppColor.watermelonCardColor,
                      customImage:
                          'assets/images/Watermelon-Free-Download-PNG.png',
                      customButtonColor: AppColor.watermelonButtonColor,
                      fruitName: "Watermelon",
                      fruitUnit: "1 unit",
                      fruitPrice: "\$5.07",
                      // rating: 3,
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
  // int selectIndex = 0;
  // void onTap(int index) {
  //   setState(() {
  //     selectIndex = index;
  //   });
  // }

//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.only(),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 30.0,
//           ),
//           Row(children: [
//             Container(
//               padding: const EdgeInsets.only(
//                 left: 21.0,
//               ),
//               child: const Text(
//                 "Organic Vegetabels",
//                 style: TextStyle(
//                   fontSize: 16.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                   // left: 21.0,
//                   ),
//               child: const Text(
//                 " (20% off)",
//                 style: TextStyle(
//                   fontSize: 12.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//           ]),
//           Container(
//             padding: const EdgeInsets.only(
//               left: 21.0,
//             ),
//             child: const Text(
//               " Pick up from organic",
//               style: TextStyle(
//                 fontSize: 12.0,
//                 // fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           Expanded(
//             child: MasonryGridView(
//               mainAxisSpacing: 15.0,
//               crossAxisSpacing: 15.0,
//               gridDelegate:
//                   const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Row(children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SingleFruit(
//                             singleFruitImage: 'img/fruits/tomato.png',
//                             singleFruitPrice: 2.45,
//                             singleFruitName: 'Grapes',
//                             singleFruitDescription:
//                                 "Grapee's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
//                             singleFruitBackground: AppColor.strawberryCardColor,
//                           ),
//                         ),
//                       );
//                     },
//                     child: CustomCard(
//                       height: 300.0,
//                       customColor: AppColor.strawberryCardColor,
//                       customImage: 'tomato.png',
//                       customButtonColor: AppColor.strawberryButtonColor,
//                       fruitName: "tomato",
//                       fruitUnit: "1 kg",
//                       fruitPrice: "\$2.45",
//                       // rating: 3,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SingleFruit(
//                             singleFruitImage: 'img/fruits/khyaar.png',
//                             singleFruitPrice: 1.52,
//                             singleFruitName: 'khyaar',
//                             singleFruitDescription:
//                                 "Pineapple's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
//                             singleFruitBackground: AppColor.pineappleCardColor,
//                           ),
//                         ),
//                       );
//                     },
//                     child: CustomCard(
//                       height: 290.0,
//                       customColor: AppColor.pineappleCardColor,
//                       customImage: 'khyaar.png',
//                       customButtonColor: AppColor.pineappleButtonColor,
//                       fruitName: "khyaar",
//                       fruitUnit: "1 lb",
//                       fruitPrice: "\$1.52",
//                       // rating: 3,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SingleFruit(
//                             singleFruitImage: 'img/fruits/blueberries.png',
//                             singleFruitPrice: 4.07,
//                             singleFruitName: 'Blueberries',
//                             singleFruitDescription:
//                                 "blueberries's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
//                             singleFruitBackground:
//                                 AppColor.blueBerriesCardColor,
//                           ),
//                         ),
//                       );
//                     },
//                     child: CustomCard(
//                       height: 320.0,
//                       customColor: AppColor.blueBerriesCardColor,
//                       customImage: 'blueberries.png',
//                       customButtonColor: AppColor.blueBerriesButtonColor,
//                       fruitName: "Blueberries",
//                       fruitUnit: "1 kg",
//                       fruitPrice: "\$4.07",
//                       // rating: 3,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SingleFruit(
//                             singleFruitImage: 'img/fruits/watermelon.png',
//                             singleFruitPrice: 5.07,
//                             singleFruitName: 'Watermelon',
//                             singleFruitDescription:
//                                 "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
//                             singleFruitBackground: AppColor.watermelonCardColor,
//                           ),
//                         ),
//                       );
//                     },
//                     child: CustomCard(
//                       height: 285.0,
//                       customColor: AppColor.watermelonCardColor,
//                       customImage: 'watermelon.png',
//                       customButtonColor: AppColor.watermelonButtonColor,
//                       fruitName: "Watermelon",
//                       fruitUnit: "1 unit",
//                       fruitPrice: "\$5.07",
//                       // rating: 3,
//                     ),
//                   ),
//                 ]),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }

