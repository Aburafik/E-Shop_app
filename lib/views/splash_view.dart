import 'dart:async';

import 'package:e_commerce_app/views/all_products_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    ///Wait for 3 seconds before moving to the next screen

    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AllProductView()),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle shoptitleStyle =
        Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 30);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.green,
            ),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: "E-",
                style: shoptitleStyle,
                children: [
                  TextSpan(
                      text: "Shop",
                      style: shoptitleStyle.copyWith(color: Colors.green)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
