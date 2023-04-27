import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_grocery_app/views/select_location.dart';
import 'package:nectar_grocery_app/views/verification.dart';
import 'package:nectar_grocery_app/widgets/social_media_auth_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 360,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/original_grocery.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 40),
              child: Text(
                "Get your groceries \n with nectar",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Image.asset(
                          "assets/images/flag.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: "024*****45",
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(3, 3, 3, 0.4),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                const Center(
                  child: Text(
                    "Or connect with Social media",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VerificationScreen()));
                  },
                  child: const SocialMediaAuthButton(
                      authOptionTitle: "Continue with Google",
                      authOptionColor: Color.fromRGBO(83, 131, 236, 1)),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VerificationScreen()));
                  },
                  child: const SocialMediaAuthButton(
                      authOptionTitle: "Continue with Facebook",
                      authOptionColor: Color.fromRGBO(74, 102, 172, 1)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectLocation()));
              },
              child: const Center(
                child: Text("Select Location"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
