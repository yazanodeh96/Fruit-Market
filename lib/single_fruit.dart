import 'package:flutter/material.dart';
import 'colors.dart';

class SingleFruit extends StatefulWidget {
  SingleFruit({
    Key? key,
    required this.singleFruitDescription,
    required this.singleFruitImage,
    required this.singleFruitName,
    required this.singleFruitPrice,
    required this.singleFruitBackground,
  }) : super(key: key);

  String singleFruitImage;
  String singleFruitName;
  double singleFruitPrice;
  String singleFruitDescription;
  Color singleFruitBackground;

  @override
  State<SingleFruit> createState() => _SingleFruitState();
}

class _SingleFruitState extends State<SingleFruit> {
  late int fruitAmount = 1;

  Color? selectedButtonColor;
  Color? selectedHeartIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Details',
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.white,
                  child: Center(
                    child:
                        Image.asset(widget.singleFruitImage, fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: 100.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.singleFruitName,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: AppColor.mainTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.singleFruitDescription,
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 12.0,
                          color: AppColor.mainTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Nutrition',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: AppColor.mainTextColor,
                        ),
                      ),
                      Row(children: [
                        Text(
                          "\u2022",
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ), //bullet text
                        SizedBox(
                          width: 10,
                        ), //space between bullet and text
                        Expanded(
                          child: Text(
                            "Fiber",
                            style: TextStyle(fontSize: 12),
                          ), //text
                        ),
                      ]),
                      Row(children: [
                        Text(
                          "\u2022",
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ), //bullet text
                        SizedBox(
                          width: 10,
                        ), //space between bullet and text
                        Expanded(
                          child: Text(
                            "Potassium",
                            style: TextStyle(fontSize: 12),
                          ), //text
                        ),
                      ]),
                      Row(children: [
                        Text(
                          "\u2022",
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ), //bullet text
                        SizedBox(
                          width: 10,
                        ), //space between bullet and text
                        Expanded(
                          child: Text(
                            "Iron",
                            style: TextStyle(fontSize: 12),
                          ), //text
                        ),
                      ]), //one bullet
                      Row(children: [
                        Text(
                          "\u2022",
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ), //bullet text
                        SizedBox(
                          width: 10,
                        ), //space between bullet and text
                        Expanded(
                          child: Text(
                            "Vitmin C",
                            style: TextStyle(fontSize: 12),
                          ), //text
                        ),
                      ]), //one bullet
                      Row(children: [
                        Text(
                          "\u2022",
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ), //bullet text
                        SizedBox(
                          width: 10,
                        ), //space between bullet and text
                        Expanded(
                          child: Text(
                            "Vitmin K",
                            style: TextStyle(fontSize: 12),
                          ), //text
                        ),
                      ]), //one bullet

                      Row(
                        children: [
                          Text(
                            widget.singleFruitPrice.toString() + "Per/kg",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              height: 1.4,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    30.0,
                                  ),
                                  color: Colors.green),
                              child: const Center(
                                child: Text(
                                  "Buy now",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
