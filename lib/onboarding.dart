import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:onboarding/onboarding.dart';

import 'Login.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  Widget dotpageView() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: i == Pagenumber ? Colors.green : Colors.white,
                  border: i == Pagenumber
                      ? Border.all(color: Colors.green)
                      : Border.all(color: Colors.green)),
            )
        ],
      );
    }));
  }

  PageController nextpage = PageController();
  int Pagenumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            Pagenumber = value;
          });
        },
        controller: nextpage,
        children: [
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Image.asset('assets/images/onBoardingFirst.gif'),
              Text(
                'E Shopping ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Explore top organic fruits & grab them',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              dotpageView(),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  nextpage.animateToPage(1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 146,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Page 2
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Image.asset('assets/images/Delivery.gif'),
              Text(
                'Delivery on the way ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Get your order by speed delivery',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              dotpageView(),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  nextpage.animateToPage(2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 146,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Page 3
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Image.asset('assets/images/arrived.gif'),
              Text(
                'Delivery Arrived',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Order is arrived at your Place',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              dotpageView(),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: Container(
                  width: 146,
                  height: 48,
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  // child: Center(
                  //   child: ElevatedButton(
                  //     child: Text('Get Started'),
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => const Login()));
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: Colors.green),
                  //   ),
                  //   // child: Text(

                  //   //   'Get Started',
                  //   //   style: TextStyle(color: Colors.white, fontSize: 14),

                  //   // ),
                  // ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
