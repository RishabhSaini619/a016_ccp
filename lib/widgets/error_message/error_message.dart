import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ErrorMessage extends StatelessWidget {
  String message;

  ErrorMessage({this.message});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: 0.80,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/error.jpg',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        // Text(
        //   "${message.toUpperCase()}",
        //   style: TextStyle(
        //     fontSize: 30,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.5,
        //     color: Color(0xFFbf2434),
        //   ),
        //   textAlign: TextAlign.center,
        // ),
      ],
    );
  }
}
