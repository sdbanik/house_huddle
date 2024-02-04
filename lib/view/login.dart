import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:house_huddle/view/task_view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) => email = value,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            obscureText: true,
            onChanged: (value) => password = value,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          ElevatedButton(
            child: Text('Login'),
            onPressed: () async {
              try {
                final userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
                if (userCredential.user != null) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaskPage()));
                }
              } catch (e) {
                print(e); // Ideally, show a user-friendly error message
              }
            },
          ),
        ],
      ),
    );
  }
}
