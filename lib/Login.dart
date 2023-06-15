import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // late TextEditingController _nameController = TextEditingController();
  // late TextEditingController _passwordController = TextEditingController();

  late String nameText;
  late String passText;


  void _login() {
    // String name = _nameController.text;
    // String password = _passwordController.text;

    Navigator.pushNamed(
      context,'/logininfo',arguments: {'name': nameText, 'password': passText},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize:30) ),
            Icon(Icons.person,size: 70),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                nameText =value;
              },
              // controller: _nameController,
              decoration: InputDecoration(
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ,
                labelText: 'Name',
                suffixIcon:Icon(Icons.input) ,

              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                passText=value;
              },
              // controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),
              ) ,
              labelText: 'Password',
             suffixIcon:Icon(Icons.lock) ,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}