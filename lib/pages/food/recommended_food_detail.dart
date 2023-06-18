import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Text("sliver app bar")
            ),
            pinned: true,
            backgroundColor:  const Color(0xffdabc79),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/nasiayamkremes.png",
              width: double.maxFinite,
                fit: BoxFit.cover,

                  ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Kombinasi sempurna antara nasi putih yang lezat, ayam kremes yang gurih, segarnya timun, dan sambel yang menggugah selera. Potongan ayam kremes yang disajikan dalam hidangan ini merupakan bintang utama yang menambahkan cita rasa yang kaya dan gurih pada setiap suapan. Ayam yang dipanggang dengan sempurna, memberikan tekstur yang juicy dan empuk di dalamnya. Dilapisi dengan rempah-rempah rahasia, ayam kremes ini memberikan sensasi renyah yang tak terlupakan saat digigit. Jadi, tunggu apa lagi? Pesan sekarang melalui GoFood dan rasakan kelezatan Nasi Ayam Kremes yang lengkap dengan nasi putih, ayam kremes, timun segar, dan sambel yang menggugah selera. Setiap suapannya akan membawa Anda pada perjalanan rasa yang tak terlupakan, memberikan kenikmatan kuliner yang Anda cari.Nasi Ayam Kremes adalah hidangan yang cocok untuk dinikmati dalam berbagai kesempatan. Baik Anda ingin menyantapnya sebagai makan siang yang cepat dan lezat, santapan malam bersama keluarga, atau sebagai hidangan spesial saat Anda merayakan momen istimewa, Nasi Ayam Kremes akan memenuhi keinginan Anda. Nikmati kemudahan memesan Nasi Ayam Kremes melalui GoFood, yang akan mengantarkan hidangan ini dengan aman dan cepat ke tempat tujuan Anda. Dalam kemasan yang praktis dan terjaga kebersihannya, Anda dapat menikmati Nasi Ayam Kremes dengan kualitas terbaik."
            ),
          )
        ],
      ),
    );
  }
}
