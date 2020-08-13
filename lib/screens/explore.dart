import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  String query;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      
        // Search
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search for people'
            ),
            keyboardType: TextInputType.text,
            validator: (val) => val.isEmpty ? 'Enter a username' : null,
            onChanged: (val) {
              setState(() => query = val);
            },
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  // Search results
                  listItemTile('@harysuryanto', 'Hary Suryanto'),
                  listItemTile('@k.dwi.s', 'Kemal Dwi Saputro'),
                  listItemTile('@rivalagaintstheworld', 'Rival Muhamad'),
                  listItemTile('@hovisohibul', 'Hovi Sihobul'),
                  listItemTile('@fajarsj', 'Fajar Saputro Juliantoro'),
                  listItemTile('@syubekti_priatama', 'Syubekti Priatama'),
                  listItemTile('@harysuryanto', 'Hary Suryanto'),
                  listItemTile('@k.dwi.s', 'Kemal Dwi Saputro'),
                  listItemTile('@rivalagaintstheworld', 'Rival Muhamad'),
                  listItemTile('@hovisohibul', 'Hovi Sihobul'),
                  listItemTile('@fajarsj', 'Fajar Saputro Juliantoro'),
                  listItemTile('@syubekti_priatama', 'Syubekti Priatama'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Widget listItemTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Text(subtitle.substring(0, 1)),
      ),
    );
  }

}