import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zzoop/views/custom_widgets/main_button.dart';
import 'package:zzoop/views/screens/bottom_navigation_bar_screen.dart';
import 'package:zzoop/views/screens/home_screen.dart';
import 'package:zzoop/views/screens/send_enquiry_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController otpController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(1),
                image: DecorationImage(
                    image: AssetImage('images/bg_image.png'),
                    fit: BoxFit.cover,
                    opacity: 0.2)),
          ),
          Positioned(
            top: 172,
            left: 65,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 268,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/Logo.png'),
                  )),
                ),
              ],
            ),
          ),
          Positioned(
            top: 240,
            left: 76,
            child: Text(
              "Hi there! We're glad you're here.",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
          Positioned(
            top: 420,
            left: 1,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "We help you find and connect \n                   with the best",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF161D24),
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Local Businesses in Town",
                          style: GoogleFonts.barlow(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Enter OTP',
                        style: GoogleFonts.barlow(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        // visible: otpFieldVisibility,
                        child: TextField(
                          controller: otpController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: '_ _ _ _ _ _',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MainElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BottomNavigationBarScreen(),
                                ));
                          },
                          buttonText: 'LOGIN'),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have account",
                            style: GoogleFonts.barlow(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          GestureDetector(
                            child: Text(
                              "Register Now",
                              style: GoogleFonts.barlow(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.teal),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Made in India. For Indians!",
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
