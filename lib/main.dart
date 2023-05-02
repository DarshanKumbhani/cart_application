import 'package:cart_application/provider/cart_provider.dart';
import 'package:cart_application/view/add_to_cart_screen.dart';
import 'package:cart_application/view/home_screen.dart';
import 'package:cart_application/view/nike_screen.dart';
import 'package:cart_application/view/product_view.dart';
import 'package:cart_application/view/puma_screen.dart';
import 'package:cart_application/view/spalsh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Product(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          'home': (context) => Home_Screen(),
          'view':(context) => Product_view(),
          'nike':(context) => Nike(),
          'puma':(context) => Puma(),
          'cart':(context) => Cart_screen(),
        },
      ),
    ),
  );
}
