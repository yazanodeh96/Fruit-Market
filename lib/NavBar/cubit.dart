import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/NavBar/states.dart';
import 'package:fruitmarket/View/Favourite/Fav.dart';
import 'package:fruitmarket/View/MyAccount/Account.dart';
import 'package:fruitmarket/View/ShoppingCart/Cart.dart';

import '../View/Dashboard/Dashboard.dart';
import '../View/Home/Home.dart';
import '../View/MyAccount/my_account.dart';

class MyAppCubit extends Cubit<MyAppStates> {
  MyAppCubit() : super(MyAppInitState());

  int selectedIndex = 0;
  List<Widget> screen = [
    HomeScreen(),
    ShoppingCart(),
    Favourite(),
    My_account(),
  ];

  void onTap({int? index}) {
    selectedIndex = index!;
    emit(MyAppChangeIndexState());
  }
}
