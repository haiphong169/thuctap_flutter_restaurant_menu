import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:restaurant_menu/list_item.dart';
import 'package:restaurant_menu/tab_icon.dart';

var list = [
  const ListItem(
      name: 'Steak',
      price: 19.99,
      imagePath: 'assets/images/steak.jpg',
      description: 'Juicy juicy steak'),
  const ListItem(
      name: 'Salad',
      price: 12.99,
      imagePath: 'assets/images/salad.jpg',
      description: 'Delicious, healthy salad'),
  const ListItem(
      name: 'Pizza',
      price: 17.99,
      imagePath: 'assets/images/pizza.jpg',
      description: 'Pepperoni pizza made with love from Chef DiAngello'),
  const ListItem(
      name: 'Hamburger',
      price: 14.99,
      imagePath: 'assets/images/hamburger.jpg',
      description: 'Best hamburger in the world right here!'),
  const ListItem(
      name: 'Fried Chicken',
      price: 15.99,
      imagePath: 'assets/images/chicken.png',
      description: 'It\'s good!'),
  const ListItem(
      name: 'Pho',
      price: 10.99,
      imagePath: 'assets/images/pho.jpg',
      description: 'Very, veryyy delicious!'),
];

var drinkList = [
  const ListItem(
      name: 'Coffee',
      price: 9.99,
      imagePath: 'assets/images/coffee.jpg',
      description: 'Delicious black coffee'),
  const ListItem(
      name: 'Tea',
      price: 9.99,
      imagePath: 'assets/images/tea.jpg',
      description: 'Black tea to your liking'),
  const ListItem(
      name: 'Coke',
      price: 9.99,
      imagePath: 'assets/images/coke.jpg',
      description: 'Good old Coca Cola!'),
  const ListItem(
      name: 'Wine',
      price: 19.99,
      imagePath: 'assets/images/wine.jpg',
      description: 'One glass of wine'),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Edu NSW ACT Foundation',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFood = true;

  void setFood() {
    setState(() {
      isFood = true;
    });
  }

  void setDrink() {
    setState(() {
      isFood = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 60,
                    width: 60,
                    decoration: isFood
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey.shade300)
                        : BoxDecoration(),
                    child: TabIcon(icon: Icons.food_bank, handleTap: setFood)),
                Container(
                    height: 60,
                    width: 60,
                    decoration: !isFood
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey.shade300)
                        : BoxDecoration(),
                    child:
                        TabIcon(icon: Icons.local_drink, handleTap: setDrink)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: isFood ? list : drinkList,
              ),
            )
          ],
        ));
  }
}
