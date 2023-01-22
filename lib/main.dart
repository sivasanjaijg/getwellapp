import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/config/route.dart';
import 'package:flutter_health_care_app/login.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_health_care_app/stores.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Appointment App',
      theme:AppTheme.lightTheme,
      routes: Routes.getRoute(),
        onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
      home: SplashScreen(),
     
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash:
    Column(

      children: [
       // const Text('Get Well Soon',style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Colors.black),),
        //const Text('Appointment App',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.grey),),
        Lottie.asset('assets/uu.json' ,fit: BoxFit.cover),

    ],


    ),
        backgroundColor: Colors.white,

        nextScreen: Mylogin(),
    splashIconSize: 400,
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.theme,
      animationDuration: const Duration(seconds: 2),

    );
  }
}


