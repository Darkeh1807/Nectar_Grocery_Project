import 'package:flutter/material.dart';
import 'package:nectar_grocery_app/utils/constants.dart';
import 'package:nectar_grocery_app/views/shop_view.dart';
import 'package:nectar_grocery_app/views/navigation_page.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter your 4-digit code",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "Code",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "----",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Expanded(child: Container()),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "Resend Code",
                style: TextStyle(fontSize: 18, color: primaryColor),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NavigationPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
