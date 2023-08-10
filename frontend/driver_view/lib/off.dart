import 'package:flutter/material.dart';

class off_mode extends StatelessWidget {
  const off_mode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        'assets/s.png',
      ),
      SizedBox(height: 5),
      Text(
        "You are not working currently",
        style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
      )
    ]);
  }
}
