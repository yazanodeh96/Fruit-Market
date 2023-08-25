import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitmarket/NavBar/cubit.dart';
import 'package:fruitmarket/NavBar/states.dart';

import '../splashscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyAppCubit(),
      child: BlocConsumer<MyAppCubit, MyAppStates>(
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const Splash());
        },
        listener: (context, state) {},
      ),
    );
  }
}
