import 'package:flutter/material.dart';
import 'package:nectar_grocery_app/widgets/custom_button.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset("assets/images/location.png"),
            ),
            Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Select Location",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Switch on your location to stay tuned with\n what's happening in your area",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Your Zone",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Asylum-Down",
                        suffixIcon: Icon(
                          Icons.arrow_drop_down_circle,
                          size: 25,
                        ),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Your Area",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Types of your area",
                        suffixIcon: Icon(
                          Icons.arrow_drop_down_circle,
                          size: 25,
                        ),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black45)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(buttonTitle: "Submit"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
