import 'dart:async';
import 'package:flutter/material.dart';
import 'get_started_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Sau 2 giây, chuyển sang GetStartedScreen
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const GetStartedScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Nền background
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Logo ở giữa
          Center(
            child: SizedBox(
              width: 220,
              height: 82,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Nếu muốn thêm vòng tròn mờ, bỏ comment bên dưới
          /*
          Positioned.fill(
            top: 540,
            child: Center(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  width: 432,
                  height: 432,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF5069),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          */
        ],
      ),
    );
  }
}
