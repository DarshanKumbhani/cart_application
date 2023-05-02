import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import 'home_screen.dart';

class Puma extends StatefulWidget {
  const Puma({Key? key}) : super(key: key);

  @override
  _PumaState createState() => _PumaState();
}

class _PumaState extends State<Puma> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.sort,
                  size: 30,
                ),
                Text(
                  " Puma's Shoes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                itemCount: 4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "For Women's",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'view', arguments: index);
                    },
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 160,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color(0xffE6E6E6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${prot!.PumaW[index].price}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Image.asset(
                              "${prof.PumaW[index].image}",
                              fit: BoxFit.contain,
                            ),
                          ],
                        )),
                  );
                },
                itemCount: prof.PumaW.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "For Men's",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'view', arguments: index);
                    },
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(5),
                            height: 160,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Color(0xffE6E6E6),
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: [
                                Text(""),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${prot!.Puma[index].price}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Image.asset(
                                  "${prof.Puma[index].image}",
                                  fit: BoxFit.contain,
                                ),
                              ],
                              
                            )),
                      ],
                    ),
                  );
                },
                itemCount: prof.Puma.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget topView(int index) {
    return Container(
      height: 140,
      width: 260,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "${prof!.pumapos[index]}",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
