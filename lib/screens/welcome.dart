import '../screens/register.dart';
import '../screens/sign_in.dart';
import 'package:flutter/material.dart';
import '../widget/my_button.dart';

class Welcome extends StatefulWidget {
  static const String RouteScreen = 'welcome';
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Container(
                      //  height: 350,
                      padding: EdgeInsets.only(top: 40),
                      child: Image.asset('images/1.jpg'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Message',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontFamily: 'RampartOne',
                            //  fontFamily: 'BungeeShade',
                            //fontFamily: 'Koulen',
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 44, 156, 0),
                          ),
                        ),
                        Text(
                          'Me',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontFamily: 'RampartOne',
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 252, 74, 61),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60),
                MyButton(
                  //      color: Color.fromARGB(255, 252, 74, 61),
                  color: Color.fromARGB(255, 44, 156, 0),
                  title: 'Sign in',
                  onPressed: () {
                    Navigator.pushNamed(context, SiginIn.RouteScreen);
                  },
                ),
                MyButton(
                  color: Color.fromARGB(255, 252, 74, 61),
                  // color: Color.fromARGB(255, 44, 156, 0),
                  title: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, Registration.RouteScreen);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
