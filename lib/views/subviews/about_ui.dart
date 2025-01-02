// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUi extends StatelessWidget {
  const AboutUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset(             
                'assets/images/saulogo.png',
                width: MediaQuery.of(context).size.width * 0.5,              
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Tech SAU BUFFET',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'แอปพลิเคชันร้านหมูกระทะ \n เพื่อคนไทย \n โดยเด็กไทย \n สนใจแอปพลิเคชันติดต่อ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  color: Color.fromARGB(255, 70, 70, 70),
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0,
              ),
              Text(
                'เด็กไอที SAU',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  color: Color.fromARGB(255, 70, 70, 70),
                  fontWeight: FontWeight.bold
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset(             
                'assets/images/sauqr.png',
                width: MediaQuery.of(context).size.width * 0.3,              
              ),
            ],
          ),
        ),
      ),
    );
  }
}