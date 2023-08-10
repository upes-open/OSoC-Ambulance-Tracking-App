import 'package:driver_view/drawer_widget.dart';
import 'package:driver_view/off.dart';
import 'package:driver_view/on.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonSlidePage(),
    );
  }
}

class ButtonSlidePage extends StatefulWidget {
  @override
  _ButtonSlidePageState createState() => _ButtonSlidePageState();
}

class _ButtonSlidePageState extends State<ButtonSlidePage> {
  bool isOn = false;

  @override
  void initState() {
    super.initState();
    loadSavedState();
  }

  Future<void> loadSavedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isOn = prefs.getBool('isOn') ?? false;
    });
  }

  Future<void> saveState(bool newState) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isOn', newState);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          endDrawer: DrawerWidget(),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/logo.png',
                    height: 300,
                    width: 300,
                  ),
                ),
                SizedBox(height: 42),
                Transform.scale(
                  scale: 1.5,
                  child: Switch(
                    value: isOn,
                    onChanged: (value) async {
                      await saveState(value);
                      setState(() {
                        isOn = value;
                      });
                    },
                  ),
                ),
                if (isOn) on_mode() else off_mode(),
              ],
            ),
          ),
        ));
  }
}
