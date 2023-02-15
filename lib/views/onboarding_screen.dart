import 'package:flutter/material.dart';
import 'package:nectar_grocery_app/views/sign_in.dart';
import 'package:nectar_grocery_app/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.pexels.com/photos/6994277/pexels-photo-6994277.jpeg?auto=compress&cs=tinysrgb&w=1600",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(14, 23, 39, 0.5)),
            child: Column(
              children: [
                const SizedBox(
                  height: 500,
                ),
                const Text(
                  "Welcome \n to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Get your groceries in as far as one hour",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(252, 252, 252, 70 / 100)),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignIn()));
                  },
                  child: const CustomButton(
                    buttonTitle: 'Get Started',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
