import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pinput/pinput.dart';

import 'AdressandName.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Enter The 4 digit code that was \n send to your Mobile Number",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Pinput(
              showCursor: true,
              defaultPinTheme: PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 335,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdressName()));
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
        ),
      ),
    ));
  }
}
