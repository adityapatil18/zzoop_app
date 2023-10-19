import 'package:flutter/material.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zzoop/views/screens/otp_verify_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
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
            child: Container(
              height: 50,
              width: 268.33,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/Logo.png'))),
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
            left: 0,
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "We help you find and connect \n                   with the best",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF161D24),
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Local Businesses in Town",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF161D24),
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 70,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: IntlPhoneField(
                          controller: phoneController,
                          initialCountryCode: 'IN',
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFF1B4F7F),
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            'SEND OTP',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpVerificationScreen(),
                              ));
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF161D24),
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF07D58C),
                                fontSize: 18),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Made in India. For Indians!",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF161D24),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
