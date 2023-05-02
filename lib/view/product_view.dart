import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

Product prof = Product();
Product prot = Product();

class Product_view extends StatefulWidget {
  const Product_view({Key? key}) : super(key: key);

  @override
  _Product_viewState createState() => _Product_viewState();
}

class _Product_viewState extends State<Product_view> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<Product>(context, listen: false);
    prot = Provider.of<Product>(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "${prof.Productlist[index].image}",
                      height: 400,
                      width: 400,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 130,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "•",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "•",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "•",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "•",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "•",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${prof.Productlist[index].name}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "₹${prof.Productlist[index].price}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nike's shoes for running",
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    )),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.star_outlined,
                  color: Colors.grey.shade400,
                  size: 23,
                ),
                Icon(Icons.star_outlined,
                    color: Colors.grey.shade400, size: 23),
                Icon(Icons.star_outlined,
                    color: Colors.grey.shade400, size: 23),
                Icon(Icons.star_outlined,
                    color: Colors.grey.shade400, size: 23),
                Icon(Icons.star_half_outlined,
                    color: Colors.grey.shade400, size: 23)
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  "Color's   - ",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade400),
                ),
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(
              "Nike's “Just Do It,” the Last Great Advertising Tagline, Celebrates its 25th Birthday. It's hard to believe that it's been 25 years since the iconic “Just do it” slogan was introduced by Nike and their advertising agency, Wieden + Kennedy.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey.shade400),
            ),
            SizedBox(height: 14,), 
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'cart');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
