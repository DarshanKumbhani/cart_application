import 'package:cart_application/model/cart_model.dart';
import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
// ALL PRODUCT
  List<Productmodel> Productlist = [
    Productmodel(
      name: "PUMA SPORT",
      image: "assets/images/p1.png",
      price: 200,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE X5",
      image: "assets/images/n1.png",
      price: 450,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE X5 PRO",
      image: "assets/images/n2.png",
      price: 350,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA V5",
      image: "assets/images/p2.png",
      price: 249,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE F6",
      image: "assets/images/n3.png",
      price: 280,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA PRO",
      image: "assets/images/p3.png",
      price: 900,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE SPORT",
      image: "assets/images/n4.png",
      price: 350,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA MAX",
      image: "assets/images/p4.png",
      price: 670,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE AIR5",
      image: "assets/images/n4.png",
      price: 100,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA AIR4",
      image: "assets/images/p5.png",
      price: 346,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE LUXURY",
      image: "assets/images/n5.png",
      price: 780,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA SMOOTH90",
      image: "assets/images/p6.png",
      price: 129,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE DROP",
      image: "assets/images/n6.png",
      price: 899,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA 56",
      image: "assets/images/p7.png",
      price: 999,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE 12",
      image: "assets/images/n7.png",
      price: 444,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA 56",
      image: "assets/images/p8.png",
      price: 659,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA PROMAX",
      image: "assets/images/p9.png",
      price: 989,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE AIRMAX",
      image: "assets/images/n9.png",
      price: 245,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE AIRPRO",
      image: "assets/images/n8.png",
      price: 199,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA45",
      image: "assets/images/p10.png",
      price: 659,
      qu: 1,
    ),
  ];

//ONLY NIKE
  List<Productmodel> Nike = [
    Productmodel(
      name: "NIKE",
      image: "assets/images/n6.png",
      price: 899,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n7.png",
      price: 444,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n8.png",
      price: 199,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n9.png",
      price: 245,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n5.png",
      price: 780,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n10.png",
      price: 350,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n4.png",
      price: 100,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n3.png",
      price: 450,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n2.png",
      price: 350,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n1.png",
      price: 280,
      qu: 1,
    ),
  ];

//NIKE FOR WOMEN
  List<Productmodel> NikeW = [
    Productmodel(
      name: "NIKE",
      image: "assets/images/n_w_1.jpeg",
      price: 899,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n_w_2.jpeg",
      price: 444,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n_w_3.jpeg",
      price: 199,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n_w_4.jpeg",
      price: 245,
      qu: 1,
    ),
    Productmodel(
      name: "NIKE",
      image: "assets/images/n_w_5.jpeg",
      price: 780,
      qu: 1,
    ),
  ];

//ONLY PUMA
  List<Productmodel> Puma = [
    Productmodel(
      name: "PUMA",
      image: "assets/images/p1.png",
      price: 200,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p6.png",
      price: 129,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p3.png",
      price: 900,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p5.png",
      price: 346,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p10.png",
      price: 999,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p2.png",
      price: 249,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p8.png",
      price: 659,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p4.png",
      price: 670,
      qu: 1,
    ),
  ];

//HOME SCREEN POSTER
  List imageList = [
    "assets/images/s.s1.jpeg",
    "assets/images/s.s2.jpeg",
    "assets/images/s.s3.jpeg",
    "assets/images/s.s4.jpeg",
    "assets/images/s.s5.jpeg",
  ];

//NIKE SCREEN NIKE POSTER
  List imglist = [
    "assets/images/nike1.jpg",
    "assets/images/nike2.png",
    "assets/images/nike3.jpeg",
    "assets/images/nike4.jpg",
  ];

//PUMA SCREEN NIKE POSTER
  List pumapos = [
    "assets/images/p_p1.jpeg",
    "assets/images/p_p2.jpeg",
    "assets/images/p_p3.jpeg",
    "assets/images/p_p4.jpeg",
  ];

  List<Productmodel> PumaW = [
    Productmodel(
      name: "PUMA",
      image: "assets/images/p_w1.png",
      price: 200,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p_w2.png",
      price: 200,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p_w3.png",
      price: 200,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p_w4.png",
      price: 200,
      qu: 1,
    ),
    Productmodel(
      name: "PUMA",
      image: "assets/images/p_w5.png",
      price: 200,
      qu: 1,
    ),
  ];
}
