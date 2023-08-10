import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool _showSettingsList = false;

  @override
  Widget build(BuildContext context) {
    Color darkerIconColor = Colors.black;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: ListTile(
              onTap: () {},
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person_outline_sharp, color: darkerIconColor),
                  SizedBox(width: 8),
                  Text(
                    'Your Information',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.settings, color: darkerIconColor),
                SizedBox(width: 8),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    setState(() {
                      _showSettingsList = !_showSettingsList;
                    });
                  },
                  child: Icon(
                    _showSettingsList
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down,
                    color: darkerIconColor,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                _showSettingsList = !_showSettingsList;
              });
            },
          ),
          if (_showSettingsList)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: Text('Manage notifications'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Customize Theme'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Edit Information'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Delete Account'),
                  onTap: () {},
                ),
              ],
            ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.delete_outline_outlined, color: darkerIconColor),
                SizedBox(width: 8),
                Text(
                  'Trash',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.help_outline_outlined, color: darkerIconColor),
                SizedBox(width: 8),
                Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
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
