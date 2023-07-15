import 'package:donut_app_ui/tabs/burger_tab.dart';
import 'package:donut_app_ui/tabs/donut_tab.dart';
import 'package:donut_app_ui/tabs/pancake_tab.dart';
import 'package:donut_app_ui/tabs/pizza_tab.dart';
import 'package:donut_app_ui/tabs/smoothie_tab.dart';
import 'package:donut_app_ui/utilities/my_tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //my tabs
  List<Widget> myTabs = [
    //donut tab
    const MyTab(
      iconPath: 'icons/donut.png',
    ),
    //burger tab
    const MyTab(
      iconPath: 'icons/burger.png',
    ),
    //smoothie tab
    const MyTab(
      iconPath: 'icons/smoothie.png',
    ),
    //pancake tab
    const MyTab(
      iconPath: 'icons/pancake.png',
    ),
    //pizza tab
    const MyTab(
      iconPath: 'icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  //account button tapped
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //tab bar
            TabBar(tabs: myTabs),

            //tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  //donut page
                  DonutTab(),

                  //burger page
                  BurgerTab(),

                  //smoothie page
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  // pizza page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
