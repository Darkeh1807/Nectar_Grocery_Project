import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaAuthButton extends StatelessWidget {
  final String authOptionTitle;
  final Color authOptionColor;
  const SocialMediaAuthButton(
      {super.key,
      required this.authOptionTitle,
      required this.authOptionColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 360,
      decoration: BoxDecoration(
        color: authOptionColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          authOptionTitle,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
