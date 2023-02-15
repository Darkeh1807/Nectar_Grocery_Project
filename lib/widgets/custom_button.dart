import 'package:flutter/material.dart';
import 'package:nectar_grocery_app/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  const CustomButton({super.key, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 360,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          buttonTitle,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
