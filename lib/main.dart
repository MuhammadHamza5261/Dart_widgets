import 'package:dartwidgetspractise/screen_design/screen_one.dart';
import 'package:dartwidgetspractise/ui/bottom_sheet.dart';
import 'package:dartwidgetspractise/ui/expansion_tile.dart';
import 'package:dartwidgetspractise/ui/stylish_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider<WeatherBloc>(create: (context) => WeatherBloc()),
    //   ],
    //   child: MyApp(),
      MyApp());
  // ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: SplashScreen(),
    );
  }
}
///stf
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const  ScreenOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              'Flutter widgets',
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
