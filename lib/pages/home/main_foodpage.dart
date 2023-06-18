import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototype/pages/home/food_page_body.dart';
import 'package:prototype/widgets/big_text.dart';
import 'package:prototype/widgets/small_text.dart';

import '../../utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Indonesia", color: const Color(0xFF89dad0)),
                      Row(
                        children: [
                          SmallText(text: "Bandung", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search, color:Colors.white, size: Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // showing the body
          Expanded(child: SingleChildScrollView(
              child: FoodPageBody()
          )),
        ],
      )
    );
  }
}
