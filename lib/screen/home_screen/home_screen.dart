import 'package:a016_ccp/screen/country_screen/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Countries",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
            //color: Color(0xF2BF2434),
            letterSpacing: 2.5,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(
          20.0,
        ),
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/ccp_logo2.jpg',
            ),
            opacity: 150,
            fit: BoxFit.cover,
          ),
        ),
        child: CountryScreen(),
      ),
    );
  }
}
