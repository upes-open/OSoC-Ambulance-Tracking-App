import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  Page6({Key? key});

  final List<Patient> previousPatients = [
    Patient(
      name1: "John Doe",
      phone_number: 22222222222,
      email: "john.doe@example.com",
      ambulance_no: 3333,
      location:
          "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
    ),
    Patient(
      name1: "Jane Smith",
      phone_number: 22222222222,
      email: "jane.smith@example.com",
      ambulance_no: 3333,
      location:
          "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
    ),
    Patient(
      name1: "John Doe",
      phone_number: 22222222222,
      email: "john.doe@example.com",
      ambulance_no: 3333,
      location:
          "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
    ),
    Patient(
      name1: "John Doe",
      phone_number: 22222222222,
      email: "john.doe@example.com",
      ambulance_no: 3333,
      location:
          "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
    ),
    Patient(
      name1: "John Doe",
      ambulance_no: 3333,
      phone_number: 22222222222,
      location:
          "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
      email: "john.doe@example.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: ClipPath(
            clipper: ParabolicClipper(),
            child: AppBar(
              backgroundColor: Color.fromARGB(255, 254, 254, 254),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_sharp),
                color: Colors.black,
              ),
              centerTitle: true,
              title: Text(
                "Available Drivers",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: ListView.builder(
            itemCount: previousPatients.length,
            itemBuilder: (context, index) {
              final patient = previousPatients[index];
              return _buildRequestCard(
                name1: patient.name1,
                ambulance_no: patient.ambulance_no,
                phone_number: patient.phone_number,
                location: patient.location,
                emailId: patient.email,
              );
            },
          ),
        ));
  }
}

class ParabolicClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 2, size.height * 0.75, size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Patient {
  final String name1;
  final int ambulance_no;

  final int phone_number;

  final String location;
  final String email;

  Patient({
    required this.name1,
    required this.ambulance_no,
    required this.phone_number,
    required this.email,
    required this.location,
  });
}

Widget _buildRequestCard({
  required String name1,
  required int ambulance_no,
  required int phone_number,
  required String emailId,
  required String location,
}) {
  return Card(
    elevation: 2,
    color: const Color.fromARGB(255, 183, 220, 250),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(color: Colors.black),
    ),
    child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "Name: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$name1",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: "Phone no.: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$phone_number",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: "Email: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$emailId",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: "Ambulance No.: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$ambulance_no",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: "Location: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$location",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
