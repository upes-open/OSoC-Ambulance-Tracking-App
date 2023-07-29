import 'package:flutter/material.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({super.key});
  static const routeName = "/front-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Who are you?",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/client-login");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/patient.png",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      "Client",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/hospital-login");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/hospital.png",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      "Hopsital",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ambulance-login");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/ambulance.png",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      "Ambulance",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
