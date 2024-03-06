import 'package:flutter/material.dart';
import 'login_screen.dart'; // Ensure this import path is correct based on your project structure.

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // The duration of the fade animation.
    );

    _opacity = Tween(begin: 1.0, end: 0.2).animate(_controller!)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // Once the fade out completes, navigate to the LoginScreen.
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));
        }
      });

    // Start the fade out animation 500 milliseconds after the splash screen appears.
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      _controller!.forward();
    });
  }

  @override
  void dispose() {
    // Dispose of the controller to free up resources when the widget is removed from the widget tree.
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E2EBC), // The background color of the splash screen.
      body: FadeTransition(
        opacity: _opacity!, // Apply the fade animation to the child widget.
        child: Center(
          child: SizedBox(
            width: 160, // The size of your logo.
            height: 160,
            child: Image.asset('assets/images/Flag Logo.png'), // Your app's logo.
          ),
        ),
      ),
    );
  }
}

