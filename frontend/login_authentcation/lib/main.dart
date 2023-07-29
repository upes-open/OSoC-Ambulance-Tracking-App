import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_authentcation/Pages/auth/front_screen.dart';
import 'package:login_authentcation/Pages/login.dart';
import 'package:login_authentcation/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            onGenerateRoute: generateRoute,
            title: 'Flutter Firebase EMail Password Auth',
            debugShowCheckedModeBanner: false,
            home: FrontScreen(),
          );
        });
  }
}
