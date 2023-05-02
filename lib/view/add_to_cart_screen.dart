import 'package:flutter/material.dart';

class Cart_screen extends StatefulWidget {
  const Cart_screen({Key? key}) : super(key: key);

  @override
  _Cart_screenState createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          title: Text("Your Items",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          actions: [
            Icon(Icons.more_vert)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/n1.png"),
                title: Text("NIKE X5",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("450"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: 3,),
                    Text("3"),
                    SizedBox(width: 3,),
                    Icon(Icons.remove_circle)
                  ],
                ),
              ),
              SizedBox(height: 10,),

              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/n5.png"),
                title: Text("PUMA AIR4",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("346"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: 3,),
                    Text("1"),
                    SizedBox(width: 3,),
                    Icon(Icons.remove_circle)
                  ],
                ),
              ) ,
              SizedBox(height: 10,),

              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/p3.png"),
                title: Text("NIKE PRO",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("900"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: 3,),
                    Text("2"),
                    SizedBox(width: 3,),
                    Icon(Icons.remove_circle)
                  ],
                ),
              ) ,
              SizedBox(height: 10,),
              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/p5.png"),
                title: Text("PUMA AIR4",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("346"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: 3,),
                    Text("2"),
                    SizedBox(width: 3,),
                    Icon(Icons.remove_circle)
                  ],
                ),
              ),
              SizedBox(height:20),
              Center(child: Text("Your Grand Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              SizedBox(height: 20,),

              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/n1.png"),
                title: Text("NIKE X5",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Text("₹1350",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10,),

              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/n5.png"),
                title: Text("PUMA AIR4",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Text("₹599",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10,),

              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/p3.png"),
                title: Text("PUMA PRO",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Text("₹1800",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10,),

              ListTile(
                tileColor: Colors.blue.shade50,
                leading:Image.asset("assets/images/p3.png"),
                title: Text("NIKE PRO",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Text("₹1598",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10,),

              ListTile(
                tileColor: Colors.teal.shade200,
                leading: Text("Your Total is",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("₹5347",style: TextStyle(fontWeight: FontWeight.bold),),

              )
            ],
          ),
        ),
      ),
    );
  }
}
