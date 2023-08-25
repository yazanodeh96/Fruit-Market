import 'package:flutter/material.dart';
import 'package:fruitmarket/View/MyAccount/profile_menu.dart';
// import 'package:fruits_ui/profile_menu.dart';

class My_account extends StatefulWidget {
  const My_account({Key? key}) : super(key: key);

  @override
  State<My_account> createState() => _My_accountState();
}

class _My_accountState extends State<My_account> {
  @override
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            image: NetworkImage(
                                'https://media.vanityfair.com/photos/6319eab06009e759e6638e28/master/w_2560%2Cc_limit/1421315651'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text("Yazan Odeh", style: Theme.of(context).textTheme.headline4),
              Text("Yazan.odeh54@gmail.com",
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 50),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
              ProfileMenuWidget(
                  title: "My Orders", icon: Icons.shopping_bag, onPress: () {}),
              const Divider(),

              ProfileMenuWidget(
                  title: "Favoutites", icon: Icons.favorite, onPress: () {}),
              const Divider(),

              ProfileMenuWidget(
                  title: "Settings", icon: Icons.settings, onPress: () {}),
              const Divider(),
              ProfileMenuWidget(
                  title: "My Cart", icon: Icons.shopping_cart, onPress: () {}),
              const Divider(),
              ProfileMenuWidget(
                  title: "Help  ", icon: Icons.info, onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout", icon: Icons.logout, onPress: () {}),
            ],
          ),
        ),
      ),
    ));
  }
}
