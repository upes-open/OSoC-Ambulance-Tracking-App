import 'package:driver_view/Current_Bookings.dart';
import 'package:driver_view/Previous_Bookings.dart';
import 'package:driver_view/Registered_Hospitals.dart';
import 'package:flutter/material.dart';

class on_mode extends StatelessWidget {
  const on_mode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Current_Bookings()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black, width: 1),
            ),
            minimumSize: Size(300, 50),
          ),
          child: Text(
            'Current Bookings',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Previous_Bookings()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black, width: 1),
            ),
            minimumSize: Size(300, 50),
          ),
          child: Text(
            'Previous Bookings',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Registered_Hospitals()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black, width: 1),
            ),
            minimumSize: Size(300, 50),
          ),
          child: Text(
            'Registered Hospitals',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ]),
    );
  }
}
