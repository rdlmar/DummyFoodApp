import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototype/widgets/app_column.dart';
import 'package:prototype/widgets/app_icon.dart';
import 'package:prototype/widgets/expandable_text.dart';

import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
              right: 0,

              child: Container(
                width: double.maxFinite,
                  height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/nasiayamkremes.png"
                      )
                  )
                ),
          )),
          // Icon widget
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],

          )),
          // introduction of food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(

                padding: EdgeInsets.only(left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),

                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Nasi Ayam Kremes"),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Kombinasi sempurna antara nasi putih yang lezat, ayam kremes yang gurih, segarnya timun, dan sambel yang menggugah selera. Potongan ayam kremes yang disajikan dalam hidangan ini merupakan bintang utama yang menambahkan cita rasa yang kaya dan gurih pada setiap suapan. Ayam yang dipanggang dengan sempurna, memberikan tekstur yang juicy dan empuk di dalamnya. Dilapisi dengan rempah-rempah rahasia, ayam kremes ini memberikan sensasi renyah yang tak terlupakan saat digigit. Jadi, tunggu apa lagi? Pesan sekarang melalui GoFood dan rasakan kelezatan Nasi Ayam Kremes yang lengkap dengan nasi putih, ayam kremes, timun segar, dan sambel yang menggugah selera. Setiap suapannya akan membawa Anda pada perjalanan rasa yang tak terlupakan, memberikan kenikmatan kuliner yang Anda cari.")))

                  ],
                ),

          )),
          // Iexpandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
        bottom: Dimensions.height30,
        left: Dimensions.width20,
        right: Dimensions.width20),
        decoration: BoxDecoration(
          color: const Color(0xffcfd2d2),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20*2),
          topRight: Radius.circular(Dimensions.radius20*2))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: const Color(0xff222525),),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text:"0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: const Color(0xff222525),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height30,
                  bottom: Dimensions.height30,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: const Color(0xFF89dad0)
              ),
            )
          ],
        ),
      ),
    );
  }
}
