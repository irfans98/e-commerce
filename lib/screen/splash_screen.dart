import 'dart:async';
import 'package:ecommerce/screen/auth_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(),
    );
  }

  startTimer() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      ),
    );
  }

  initScreen() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xff7990DD),
            gradient: LinearGradient(
              colors: [
                (Color(0xff7990DD)),
                Color(0xff374ABE),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/images/app_logo.png"),
            ),
            Padding(padding: EdgeInsets.all(15)),
            const Text(
              "E-Commerce App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const CircularProgressIndicator(
                backgroundColor: Colors.white),
          ],
        )
      ],
    );
  }
}
