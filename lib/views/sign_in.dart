import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                    image: NetworkImage(
                      "https://o.remove.bg/downloads/f72469d9-a289-4e75-8c6f-2171b198df8b/pexels-any-lane-5946083-removebg-preview.png",
                    ),
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
                      prefixIcon: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/255px-Flag_of_Ghana.svg.png",
                        height: 20,
                        width: 20,
                      ),
                      hintText: "+233",
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(3, 3, 3, 1),
                      ),
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
                  height: 20,
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
            )
          ],
        ),
      ),
    );
  }
}
