import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Colors.dart';
import '../../single_fruit.dart';
import 'TabBarViews/DryFruits.dart';
import 'TabBarViews/Fruits.dart';
import 'TabBarViews/Vegetables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _TabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Column(children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 400,
                      color: Colors.green,
                      padding: const EdgeInsets.only(top: 42, left: 40),
                      child: const Text(
                        "Fruit Market ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                        padding:
                            const EdgeInsets.only(top: 80, left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                fontSize: 15, color: Colors.grey.shade500),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 2, color: Colors.grey.shade200),
                            ),
                          ),
                        )),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonsTabBar(
              buttonMargin: EdgeInsets.only(left: 15, right: 15),
              backgroundColor: Colors.orange,
              //backgroundColor: Colors.red,

              unselectedBackgroundColor: Colors.white,
              unselectedLabelStyle: const TextStyle(color: Colors.black),
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "Vegetables",
                ),
                Tab(
                  text: "Fruits",
                ),
                Tab(
                  text: "Dry Fruits",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Vegetabels(),
                  Fruits(),
                  DryFruits(),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleFruit(
                            singleFruitImage: 'assets/images/Grapes.gif',
                            singleFruitPrice: 2.45,
                            singleFruitName: 'Grapes',
                            singleFruitDescription:
                                "Grapee's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                            singleFruitBackground: AppColor.strawberryCardColor,
                          ),
                        ),
                      );
                    },
                  ),
                  Center(
                    child: Icon(Icons.directions_car),
                  ),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  
//     TabController _TabController = TabController(length: 3, vsync: this);
//     return SafeArea(
//       child: DefaultTabController(
//         length: 3,
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               child: Column(children: [
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       height: 100,
//                       width: 400,
//                       color: Colors.green,
//                       padding: const EdgeInsets.only(top: 42, left: 40),
//                       child: const Text(
//                         "Fruit Market ",
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ),
//                     Container(
//                         padding:
//                             const EdgeInsets.only(top: 80, left: 20, right: 20),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             prefixIcon: const Icon(Icons.search),
//                             hintText: "Search",
//                             hintStyle: TextStyle(
//                                 fontSize: 15, color: Colors.grey.shade500),
//                             filled: true,
//                             fillColor: Colors.white,
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(
//                                   width: 2, color: Colors.grey.shade200),
//                             ),
//                           ),
//                         )),
//                   ],
//                 ),
//               ]),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ButtonsTabBar(
//               backgroundColor: Colors.orange,
//               //backgroundColor: Colors.red,

//               unselectedBackgroundColor: Colors.white,
//               unselectedLabelStyle: const TextStyle(color: Colors.black),
//               labelStyle:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//               tabs: [
//                 Tab(
//                   text: "Vegetables",
//                 ),
//                 Tab(
//                   text: "Fruits",
//                 ),
//                 Tab(
//                   text: "Dry Fruits",
//                 ),
//               ],
//             ),
//             Container(
//               width: double.maxFinite,
//               height: 300,
//               child: TabBarView(controller: _TabController, children: [
//                 ListView.builder(
//                     itemCount: 3,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (_, index) {
//                       return Container(
//                         height: 300,
//                         width: 200,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage("assets/images/Grapes.gif")),
//                             borderRadius: BorderRadius.circular(20)),
//                       );
//                     }),
//                 ListView.builder(
//                     itemCount: 3,
//                     itemBuilder: (_, index) {
//                       return Container(
//                         height: 300,
//                         width: 200,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20)),
//                       );
//                     }),
//                 ListView.builder(
//                     itemCount: 3,
//                     itemBuilder: (_, index) {
//                       return Container(
//                         height: 300,
//                         width: 200,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20)),
//                       );
//                     })
//               ]),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: <Widget>[
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SingleFruit(
//                             singleFruitImage: 'assets/images/Grapes.gif',
//                             singleFruitPrice: 2.45,
//                             singleFruitName: 'Grapes',
//                             singleFruitDescription:
//                                 "Grapee's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
//                             singleFruitBackground: AppColor.strawberryCardColor,
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                   Center(
//                     child: Icon(Icons.directions_car),
//                   ),
//                   Center(
//                     child: Icon(Icons.directions_transit),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
