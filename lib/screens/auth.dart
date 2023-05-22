import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:message_me/screens/register.dart';
import '/screens/chat.dart';

class Auth extends StatelessWidget {
  static const String RouteScreen = 'Auth';
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Chat();
          } else {
            return Registration();
          }
        }),
      ),
    );
  }
}
