import 'package:flutter/material.dart';
import 'package:nectar_grocery_app/utils/constants.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(17),
            topRight: Radius.circular(17),
            bottomLeft: Radius.circular(17),
            bottomRight: Radius.circular(17)),
      ),
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
