import 'package:flutter/material.dart';
import 'package:zzoop/views/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
        },
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(1),
            image: DecorationImage(
              image: AssetImage('images/bg_image.png'),
              opacity: 0.3,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
                SizedBox(
                  height: 19,
                ),
                Text(
                  'India Ka shopping Street',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
