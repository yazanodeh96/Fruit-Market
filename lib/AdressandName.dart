import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'View/Dashboard/Dashboard.dart';
import 'View/Home/Home.dart';

class AdressName extends StatefulWidget {
  const AdressName({super.key});

  @override
  State<AdressName> createState() => _AdressNameState();
}

class _AdressNameState extends State<AdressName> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(
              top: 80,
              left: 30,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Enter Your Name ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 20.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Add Address",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 60)),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 335,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: (RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      primary: Colors.green,
                    ),
                    child: const Text("Verify"),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
