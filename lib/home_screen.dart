import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:headphone_app/repeated/custom_sign_up.dart';
import 'package:headphone_app/repeated/custom_text_button.dart';
import 'package:headphone_app/repeated/signup_button.dart';
import 'package:headphone_app/screens/sign_up.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('me'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff7fa0cd),
              Color(0xff7fa0cd),
              Color(0xffac92b9),
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          ),
          child: Stack(
            children: [
              Positioned(
                  bottom: 300,
                  left: -40,
                  child: Image.asset('assets/images/headphonebr.png')),
              const Positioned(
                top: 190,
                left: 40,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    'Head - Phones',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 0),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(
                      text: 'log in',
                    ),
                    SignupButton(
                      text: 'signup',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
