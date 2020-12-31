import 'package:flutter/material.dart';
import 'package:firebase_auth_ui/firebase_auth_ui.dart';
import 'package:firebase_auth_ui/providers.dart';

class InputNumberScreen extends StatefulWidget {
  InputNumberScreen({Key key}) : super(key: key);
  static const routeName = "input_number_screen";
  @override
  _InputNumberScreenState createState() => _InputNumberScreenState();
}

class _InputNumberScreenState extends State<InputNumberScreen> {
  @override
  void initState() {
    super.initState();
    FirebaseAuthUi.instance()
        .launchAuth(
          [
            AuthProvider.email(), // Login/Sign up with Email and password
            AuthProvider.google(), // Login with Google
            AuthProvider.facebook(), // Login with Facebook
            AuthProvider.twitter(), // Login with Twitter
            AuthProvider.phone(), // Login with Phone number
          ],
          tosUrl: "https://my-terms-url", // Optional
          privacyPolicyUrl: "https://my-privacy-policy", // Optional,
        )
        .then((firebaseUser) =>
            print("Logged in user is ${firebaseUser.displayName}"))
        .catchError((error) => print("Error $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
