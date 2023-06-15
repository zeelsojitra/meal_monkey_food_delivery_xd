import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xd/Comman_weigets/Comman_Container.dart';
import 'package:meal_monkey_food_delivery_xd/Comman_weigets/Comman_text.dart';

import '../Comman_weigets/Comman_TeextFiled.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List Food = [
    {
      "img": "assets/image/food.png",
      "name": "Food",
    },
    {
      "img": "assets/image/Sri Lankan.png",
      "name": "Sri Lankan",
    },
    {
      "img": "assets/image/Italian.png",
      "name": "Italian",
    },
    {
      "img": "assets/image/Indian.png",
      "name": "Indian",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Comman_Text(
                      text: "Good morning Akila!",
                      fontsize: 23,
                      fontweight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                          size: 25,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Comman_Text(
                  text: "Delivering to",
                  fontsize: 18,
                  fontweight: FontWeight.w400,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Comman_Text(
                      text: "Current Location",
                      fontsize: 18,
                      fontweight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 20,
                          color: Color(0xffFC6011),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Comman_TexxtFiled(
                  FocusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                  focouseborder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                  disableborder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                  hinttext: "Search food",
                  fillcolor: Colors.grey.shade300,
                  filled: true,
                  prefixicon: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: height * 0.12,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10),
                      width: width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        // image: DecorationImage(
                        //   image: AssetImage(
                        //       "asserts/image/haryo-setyadi-yvzzemH8-J0-unsplash.png"),
                        // ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Comman_Text(
                      text: Food[index]['name'],
                      fontsize: 23,
                      fontweight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Comman_Text(
                  text: "Popular Restaurents",
                  fontsize: 23,
                  fontweight: FontWeight.w400,
                  color: Colors.black,
                ),
                Spacer(),
                Comman_Text(
                  text: "View All",
                  fontsize: 23,
                  fontweight: FontWeight.w400,
                  color: Color(0xffFC6011),
                ),
              ],
            ),
          ),
          Comman_Container(
            height: height * 0.23,
            width: width,
            image:
                DecorationImage(image: AssetImage("asserts/image/pizza.png")),
          )
        ],
      ),
    );
  }
}
