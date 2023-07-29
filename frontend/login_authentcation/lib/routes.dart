import 'package:flutter/material.dart';
import 'package:login_authentcation/Pages/auth/ambulance_login.dart';
import 'package:login_authentcation/Pages/auth/ambulance_signup.dart';
import 'package:login_authentcation/Pages/auth/client_login.dart';
import 'package:login_authentcation/Pages/auth/client_signup.dart';
import 'package:login_authentcation/Pages/auth/hospital_login.dart';
import 'package:login_authentcation/Pages/auth/hospital_signup.dart';

import 'Pages/auth/front_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case FrontScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const FrontScreen());

    case ClientLogin.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => ClientLogin());

    case HospitalLogin.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => HospitalLogin());

    case AmbulanceLogin.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => AmbulanceLogin());
    case AmbulanceSignup.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => AmbulanceSignup());
    case ClientSignup.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => ClientSignup());
    case HospitalSignup.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => HospitalSignup());
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("404 Page not found"),
          ),
        ),
      );
  }
}
