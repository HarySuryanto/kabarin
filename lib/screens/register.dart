import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // Icon person
                Hero(
                  tag: 'personIcon',
                  child: Icon(
                    Icons.person,
                    size: 100,
                  ),
                ),
                
                SizedBox(height: 20.0),
                
                // Username
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.isEmpty ? 'Enter a username' : null,
                  onChanged: (val) {
                    setState(() => username = val);
                  },
                ),
                
                SizedBox(height: 20.0),
                
                // Password
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (val) => val.isEmpty ? 'Enter a password' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),

                SizedBox(height: 20),
                
                // Fullname
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Fullname",
                  ),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.isEmpty ? 'Enter fullname' : null,
                  onChanged: (val) {
                    setState(() => username = val);
                  },
                ),
                
                SizedBox(height: 20.0),
                
                // Email
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => username = val);
                  },
                ),
                
                SizedBox(height: 60.0),
                
                // Button register
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    padding: EdgeInsets.all(16),
                    color: Colors.blue[600],
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {}
                  ),
                ),
                
                SizedBox(height: 20),
                
                // Button cancel
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    padding: EdgeInsets.all(16),
                    color: Colors.grey[300],
                    child: Text(
                      'Cancel'
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
