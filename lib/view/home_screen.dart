import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

Product prof = Product();
Product prot = Product();

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<Product>(context, listen: false);
    prot = Provider.of<Product>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.sort,
                  size: 30,
                ),
                SizedBox(
                  width: 324,
                ),
                Icon(
                  Icons.local_mall,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return topView(index);
                },
                itemCount: 5,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "All Product",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //"✔ NIKE"
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'nike');
                    },
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "✔ NIKE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //"✔ NIKE"
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'puma',);
                    },
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "🐆 PUMA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //"✔ NIKE"
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'view', arguments: index);
                    },
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 200,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffE6E6E6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.favorite_border_sharp,
                                ),
                                Center(
                                    child: Image.asset(
                                        "${prof.Productlist[index].image}",fit: BoxFit.contain,))
                              ],
                            ),
                          ),
                        )),
                  );
                },
                itemCount: prof.Productlist.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget topView(int index) {
    return Container(
      height: 160,
      width: 250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "${prof!.imageList[index]}",
            fit: BoxFit.fitHeight,
          )),
    );
  }
}
