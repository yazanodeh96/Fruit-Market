import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatefulWidget {
  CustomCard({
    Key? key,
    required this.height,
    required this.customColor,
    required this.customImage,
    required this.customButtonColor,
    required this.fruitName,
    required this.fruitUnit,
    required this.fruitPrice,
  }) : super(key: key);

  double height;
  Color customColor;
  String customImage;
  Color customButtonColor;
  // IconData? plusIcon = FontAwesomeIcons.plus;
  // IconData? checkIcon = FontAwesomeIcons.check;
  String fruitName;
  String fruitUnit;
  String fruitPrice;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color? selectedContainerColor;
  IconData? selectedIcon;
  Color? selectedIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 4.0,
      ),
      width: 160.0,
      // height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 145.0,
            ),
            // child: Icon(
            //   Icons.favorite_border,
            //   color: Colors.red,
            //   size: 25.0,
            // ),
          ),
          Container(
            // height: 50,
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset(
              '${widget.customImage}',
              width: 100,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 21.0,
            ),
            child: Text(
              widget.fruitName,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 21.0,
                ),
                child: Text(
                  widget.fruitPrice,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                " Per/kg",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
