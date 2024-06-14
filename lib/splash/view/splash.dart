import 'dart:async';
import 'package:dashloc_interview/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../util/navigation_helper.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // Hiding the system settings only for Splash screen.
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom,
      ],
    );
    Timer(
      const Duration(seconds: 3),
      () => NavigationHelper.pushReplacement(
        context: context,
        destination: Home(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Pokemon',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // Enabling the system settings after leaving the splash screen.
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    ); // to re-show bars
  }
}
