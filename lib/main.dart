import 'package:flutter/material.dart';
import '../screens/auth.dart';
import '../screens/register.dart';
import '../screens/sign_in.dart';
import '../screens/welcome.dart';
import '../screens/chat.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:
          _auth.currentUser != null ? Chat.RouteScreen : Welcome.RouteScreen,
      routes: {
        Auth.RouteScreen: (context) => Auth(),
        Chat.RouteScreen: (context) => Chat(),
        Welcome.RouteScreen: (context) => Welcome(),
        Registration.RouteScreen: (context) => Registration(),
        SiginIn.RouteScreen: (context) => SiginIn(),
      },
    );
  }
}
