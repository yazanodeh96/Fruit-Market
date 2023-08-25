import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(color: Colors.green),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  minRadius: 50,
                  // backgroundColor: Colors.green,
                  backgroundImage: NetworkImage(
                      "https://media.vanityfair.com/photos/6319eab06009e759e6638e28/master/w_2560%2Cc_limit/1421315651"),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  (Icons.edit_note_rounded),
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Column(children: [
//                   Container(
//                     margin: EdgeInsets.only(top: 20),
//                     child: CircleAvatar(
//                       radius: 35,
//                       backgroundImage: NetworkImage(
//                           "https://media.vanityfair.com/photos/6319eab06009e759e6638e28/master/w_2560%2Cc_limit/1421315651"),
//                     ),
//                   ),
//                   Container(
//                       margin: EdgeInsets.only(left: 250),
//                       child: Icon(
//                         Icons.edit_note_outlined,
//                         color: Colors.white,
//                       ))
//                 ]),