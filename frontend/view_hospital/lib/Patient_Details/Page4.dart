import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  Page4({Key? key});

  final List<Patient> previousPatients = [
    Patient(
        name1: "John Doe",
        sex: "Male",
        age: 30,
        phone_number: 22222222222,
        email: "john.doe@example.com",
        location:
            "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
        phone_number1: 111111111111111,
        name2: "thomas"),
    Patient(
        name1: "Jane Smith",
        sex: "Female",
        age: 25,
        phone_number: 22222222222,
        location:
            "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
        phone_number1: 111111111111111,
        email: "jane.smith@example.com",
        name2: "thomas"),
    Patient(
        name1: "John Doe",
        sex: "Male",
        age: 30,
        phone_number: 22222222222,
        location:
            "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
        phone_number1: 111111111111111,
        email: "john.doe@example.com",
        name2: "thomas"),
    Patient(
        name1: "John Doe",
        sex: "Male",
        age: 30,
        phone_number: 22222222222,
        location:
            "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
        phone_number1: 111111111111111,
        email: "john.doe@example.com",
        name2: "thomas"),
    Patient(
        name1: "John Doe",
        sex: "Male",
        age: 30,
        phone_number: 22222222222,
        location:
            "Near Home Town Super market, Marathahalli Bridge Marathahalli-Sarjapur Outer Ring Rd Marathahalli Bengaluru, Karnataka 560037",
        phone_number1: 111111111111111,
        email: "john.doe@example.com",
        name2: "thomas"),
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
                "Previous Patients",
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
                sex: patient.sex,
                age: patient.age,
                phone_number: patient.phone_number,
                location: patient.location,
                emailId: patient.email,
                name2: patient.name2,
                phone_number1: patient.phone_number1,
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
  final String sex;
  final int age;
  final int phone_number;
  final int phone_number1;
  final String location;
  final String email;
  final String name2;
  Patient({
    required this.name1,
    required this.sex,
    required this.age,
    required this.phone_number,
    required this.phone_number1,
    required this.email,
    required this.location,
    required this.name2,
  });
}

Widget _buildRequestCard({
  required String name1,
  required String sex,
  required int age,
  required int phone_number,
  required String emailId,
  required String name2,
  required int phone_number1,
  required String location,
}) {
  return Card(
    elevation: 2,
    color: Colors.white.withOpacity(0.8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(color: Colors.black),
    ),
    child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Patient's Information",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
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
              text: "Sex: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$sex",
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
              text: "Age: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "$age",
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
          SizedBox(height: 12),
          Text(
            "Driver's Information",
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
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
                  text: "$name2",
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
                  text: "$phone_number1",
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
