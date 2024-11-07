import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSignUp extends StatelessWidget {
  CustomSignUp({super.key, required this.ontap});
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(16)),
          height: 60,
          width: double.infinity,
          child: const Center(
            child: Text(
              'sign up',
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
