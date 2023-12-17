import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 0.0, 0.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: CircleAvatar(
                backgroundColor: darkGreen,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: lightGreen,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160, 110, 0.0, 0.0),
            child: Icon(Icons.lock_open_sharp, color: darkGreen, size: 60),
          ),
          Column(
            children: [
              Text(
                'Esqueceu sua senha?',
                style: TextStyle(fontFamily: 'Rubik'),
              )
            ],
          )
        ],
      ),
    );
  }
}
