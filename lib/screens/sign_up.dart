import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:headphone_app/repeated/custom_container.dart';
import 'package:headphone_app/repeated/custom_sign_up.dart';
import 'package:headphone_app/screens/screen_page.dart';
import 'package:simple_animations/simple_animations.dart';

class SignUp extends StatelessWidget {
  SignUp({
    super.key,
  });
  String? email;
  String? password;
  String? FirstName;
  String? LastName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurple.shade400,
                Colors.deepPurple.shade300,
                Colors.deepPurple.shade200,
                Colors.deepPurple.shade100,
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'sign-in',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    'welcome back',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 50)),
                        CustomContainer(
                          onchanged: (data) {
                            FirstName = data;
                          },
                          text: 'first name',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                            onchanged: (data) {
                              LastName = data;
                            },
                            text: 'last name'),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                            onchanged: (data) {
                              email = data;
                            },
                            text: 'Email'),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                            onchanged: (data) {
                              password = data;
                            },
                            text: 'password'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('forget password ?'),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomSignUp(ontap: () async {
                          try {
                            final UserCredential userCredential =
                                await FirebaseAuth
                                    .instance
                                    .createUserWithEmailAndPassword(
                                        email: email!, password: password!);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenPage()));
                          } on FirebaseAuthException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.toString())));
                          }
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
