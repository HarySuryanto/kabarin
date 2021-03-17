import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Detail Activities of Selected Person'),

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

                Center(
                  child: FlatButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Following',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    onPressed: () {}
                  ),
                ),

                SizedBox(height: 36),

                Text('Here are what Hary Suryanto did today'),

                SizedBox(height: 20),

                activityItemTile('Right now', 'Chilling', true, 0),
                activityItemTile('34 minutes ago', 'Taking a bath', false, 1),
                activityItemTile('50 minutes ago', 'Exercise', true, 2),
                activityItemTile('3 hour(s) ago', 'Learning Flutter from The Net Ninja hahaha', true, 3),
                activityItemTile('4 hour(s) ago', 'Getting hair cut', true, 4),
                activityItemTile('09.12', 'Playing War Thunder 🎮', false, 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget activityItemTile(String time, String content, bool isPublic, int index) {
    Widget _content;
    
    _content = (isPublic)
                ? Text(content, style: TextStyle(fontSize: 20))
                : LimitedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.grey[200],
                        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                        child: Text('Private activity', style: TextStyle(color: Colors.grey[700]))
                      )
                    ),
                  );

    return Row(
      children: <Widget>[
        // Timeline
        timeline(index),

        // Content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(time),
            SizedBox(height: 5),
            LimitedBox(
              maxWidth: 300,
              child: _content,
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