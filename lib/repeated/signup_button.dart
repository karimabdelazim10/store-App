import 'package:flutter/material.dart';
import 'package:headphone_app/screens/log_in_screen.dart';
import 'package:headphone_app/screens/sign_up.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(170, 43, 11, 0.275),
                      blurRadius: 1,
                      offset: Offset(2, 10))
                ]),
            height: 50,
            width: 50,
            child: TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}
