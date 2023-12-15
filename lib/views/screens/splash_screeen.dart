import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 0.8, curve: Curves.elasticOut),
      ),
    );

    _slideAnimation =
        Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.forward();

    // Navigate to the login screen after 6 seconds
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.mainBlackColor.withOpacity(1),
          image: DecorationImage(
            image: AssetImage('images/bg_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _slideAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/Z.png',
                          height: 50.31,
                          width: 36.5,
                        ),
                        Image.asset(
                          'images/Z2.png',
                          height: 50.31,
                          width: 36.5,
                        ),
                        Image.asset(
                          'images/o1.png',
                          height: 50.31,
                          width: 75.47,
                        ),
                        Image.asset(
                          'images/o2.png',
                          height: 50.31,
                          width: 75.47,
                        ),
                        Image.asset(
                          'images/p.png',
                          height: 50.31,
                          width: 35.21,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                StaggeredTextAnimation(
                  controller: _controller,
                  child: Text(
                    'India Ka shopping Street',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class StaggeredTextAnimation extends StatelessWidget {
  final AnimationController controller;
  final Widget child;

  StaggeredTextAnimation({required this.controller, required this.child});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
        ),
      ),
      child: SlideTransition(
        position:
            Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
          ),
        ),
        child: child,
      ),
    );
  }
}
