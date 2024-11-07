import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.text,
    required this.onchanged,
  });
  final String text;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(118, 27, 236, 0.298),
                    blurRadius: 20,
                    offset: Offset(0, 10)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: TextField(
                onChanged: onchanged,
                decoration: InputDecoration(
                  labelText: text,
                  labelStyle: const TextStyle(fontSize: 18),
                  border: InputBorder.none,
                ),
              ),
            )),
      ],
    );
  }
}
