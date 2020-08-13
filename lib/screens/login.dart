import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
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
                    size: 180,
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

                SizedBox(height: 60.0),
                
                // Button login
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    padding: EdgeInsets.all(16),
                    color: Colors.blue[600],
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      Toast.show('Username: $username\nPassword: $password', context, duration: Toast.LENGTH_LONG);
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  ),
                ),
                
                SizedBox(height: 20),
                
                // Button register
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    padding: EdgeInsets.all(16),
                    color: Colors.grey[300],
                    child: Text(
                      'Register'
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
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
