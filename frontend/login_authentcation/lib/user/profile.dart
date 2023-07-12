import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  User? user = FirebaseAuth.instance.currentUser;

  verifyEmail() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
      print('Verification Email has been sent');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            'Verification Email has been sent',
            style: TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFC800),
            Colors.orange.shade800,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.transparent,
            child: Text(
              'User Profile',
              style: TextStyle(
                fontSize: 24.0,
                color: const Color.fromARGB(255, 56, 24, 146),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 2.0,
                  color: const Color.fromARGB(255, 0, 5, 7),
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User ID: $uid',
                  style: TextStyle(
                    fontSize: 18.0,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email: $email',
                      style: TextStyle(
                        fontSize: 18.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 10),
                    if (user!.emailVerified)
                      Text(
                        'verified',
                        style:
                            TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                      )
                    else
                      TextButton(
                        onPressed: () => {verifyEmail()},
                        child: Text(
                          'Verify Email',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Created: $creationTime',
                  style: TextStyle(
                    fontSize: 18.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
