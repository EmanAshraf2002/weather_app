import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Screens/home_page.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: AnimatedSplashScreen(
        splash:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded (
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img_1.png'),
                radius: 130,
              ),
            ),
            SizedBox(height: 16),
            Expanded (
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ,color: Colors.white),
              ),
            ),
          ],
        ),
        nextScreen:const HomePage(),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 400,
        backgroundColor: Colors.purple,
      ),
    );



  }


}