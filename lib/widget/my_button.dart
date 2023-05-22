import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //static const String RouteScreen = 'myButton';
  final Color color;
  final String title;
  final VoidCallback onPressed;

  MyButton({
    required this.color,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 15,
        right: 15,
      ),
      child: Material(
        elevation: 10,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 45,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              //   fontFamily: 'VastShadow',
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
