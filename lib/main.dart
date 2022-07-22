import 'package:a016_ccp/screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //
  // try {
  //   await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: "AIzaSyC6VYg6Ymg9vbW9Xxb8YCmAgA5HZE7vj4g",
  //         appId: "1:661456165713:web:38533f4a6f0bbeec481170",
  //         messagingSenderId: "661456165713",
  //         projectId: "a016-ccp"),
  //   );
  // } catch (e) {
  //   print(e);
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCP',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF5e9ddd),
        ),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
