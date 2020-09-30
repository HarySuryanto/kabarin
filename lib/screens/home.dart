import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kabarin/screens/explore.dart';
import 'package:kabarin/screens/profile.dart';
import 'package:toast/toast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    // Option 1
    SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('List of people you follow'),

            SizedBox(height: 20),

            listItemTile('Hary Suryanto', 'Right now'),
            listItemTile('Kemal Dwi Saputro', '3 minutes ago'),
            listItemTile('Rival Muhamad', '49 minutes ago'),
            listItemTile('Hovi Sihobul', '1 hour(s) ago'),
            listItemTile('Fajar Saputro Juliantoro', '4 hour(s) ago'),
            listItemTile('Syubekti Priatama', '23 hour(s) ago'),
            listItemTile('Kemal Dwi Saputro', '1 min'),
            listItemTile('Kemal Dwi Saputro', '1 min'),
            listItemTile('Kemal Dwi Saputro', '1 min'),
            listItemTile('Kemal Dwi Saputro', '1 min'),
          ],
        ),
      ),
    ),

    // Option 2
    Explore(),

    // Option 3
    Profile(scaffoldKey: _scaffoldKey),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.settings),
                  SizedBox(width: 14),
                  Text('Settings'),
                ],
              ),
              onTap: () {
                Toast.show('Belum ada fungsinya', context);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.transparent,
        color: Colors.grey[850],
        height: 55,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.home, color: _selectedIndex == 0 ? Colors.black : Colors.white),
          Icon(Icons.search, color: _selectedIndex == 1 ? Colors.black : Colors.white),
          Icon(Icons.person, color: _selectedIndex == 2 ? Colors.black : Colors.white),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),

      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex)
      ),

    );
  }

  static Widget listItemTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Text(title.substring(0, 1)),
      ),
    );
  }

}