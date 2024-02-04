import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:house_huddle/view/login.dart';
import 'package:house_huddle/view/task_view.dart';
import 'firebase_options.dart'; // Make sure this file is correctly located and imported


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for Firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Ensure your firebase_options.dart file is set up correctly
  );
  runApp(HouseHuddleApp());
}

class HouseHuddleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HouseHuddle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthenticationWrapper(),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User? user = snapshot.data;
          if (user == null) {
            return LoginPage(); // Redirect to the login page if the user is not signed in
          }
          return TaskPage(); // Direct the user to the TaskPage if they are signed in
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(), // Show a loading spinner while checking authentication status
          ),
        );
      },
    );
  }
}
