import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  
  Profile({ @required this.scaffoldKey });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),

                Center(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: NetworkImage('https://yt3.ggpht.com/a-/AOh14Gh3AhOArXUdhm-vZxIR7FSPCbFQP4T_HAhTot71mw=s88-c-k-c0xffffffff-no-rj-mo'),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Center(child: Text('@harysuryanto', style: TextStyle(color: Colors.black))),

                SizedBox(height: 10),

                Center(child: Text('Hary Suryanto', style: TextStyle(color: Colors.grey[800]))),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 90,
                      color: Colors.grey[100],
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Text('987', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 10),
                          Text('Total act.', textAlign: TextAlign.center)
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      width: 90,
                      color: Colors.grey[100],
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Text('201', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 10),
                          Text('Followers', textAlign: TextAlign.center)
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      width: 90,
                      color: Colors.grey[100],
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Text('173', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 10),
                          Text('Following', textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 36),

                Text('Here are what you did today'),

                SizedBox(height: 20),

                activityItemTile('Right now', 'Chilling', true, 0),
                activityItemTile('34 minutes ago', 'Taking a bath', false, 1),
                activityItemTile('50 minutes ago', 'Exercise', true, 2),
                activityItemTile('3 hour(s) ago', 'Learning Flutter from The Net Ninja hahaha', true, 3),
                activityItemTile('4 hour(s) ago', 'Getting hair cut', true, 4),
                activityItemTile('09.12', 'Playing War Thunder 🎮', false, 5),
              ],
            ),

            // Button menu
            Positioned(
              right: 0,
              top: 0,
              width: 30,
              height: 30,
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState.openEndDrawer();
                  print(scaffoldKey);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget activityItemTile(String time, String content, bool isPublic, int index) {
    Widget _visibility = Text('');
    
    if (!isPublic) {
      _visibility = ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          child: Text('PRIVATE', style: TextStyle(color: Colors.white, fontSize: 10))
        )
      );
    }

    return Row(
      children: <Widget>[
        // Timeline
        timeline(index),

        // Content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(time),
                SizedBox(width: 6),
                _visibility
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: 300,
              child: Text(
                content, 
                style: TextStyle(fontSize: 20),
              ),
            ),

            SizedBox(height: 15),
          ],
        ),
      ],
    );
  }

  static Widget timeline(int index) {
    Color _line = Colors.grey[400];
    Color _dot = Colors.grey[600];
    Color _timelineLeadingColor = (index == 0)? Colors.transparent : _line;

    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 2,
            height: 14,
            color: _timelineLeadingColor,
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _dot
            ),
          ),
          Container(
            width: 2,
            height: 58, // 35 for single line, 58 for two lines of text
            color: _line,
          ),
        ],
      ),
    );
  }
}