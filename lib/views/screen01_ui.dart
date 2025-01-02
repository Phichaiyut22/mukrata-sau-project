// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukrata_sau_project/views/subviews/pay_ui.dart';
import 'package:mukrata_sau_project/views/subviews/home_ui.dart';
import 'package:mukrata_sau_project/views/subviews/about_ui.dart';

class Screen01Ui extends StatefulWidget {
  const Screen01Ui({super.key});

  @override
  State<Screen01Ui> createState() => _Screen01UiState();
}

class _Screen01UiState extends State<Screen01Ui> {

  //ตัวแปรเก็บหน้าจอที่จะมาแสดงร่วมกับ bottom
  List<Widget> viewShow = [
    PayUi(),
    HomeUi(),
    AboutUi(),
  ];

   //ตัวแปรเก็บหมายเลข index
  int itemSelectedIndex = 1 ;

  //ตัวแปรเรียกใช้ notch 
  NotchBottomBarController _controller = new NotchBottomBarController(index:1);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        title: Text(
          'Tech SAU BUFFET',
          style: GoogleFonts.kanit(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: viewShow[itemSelectedIndex],
      bottomNavigationBar: AnimatedNotchBottomBar(
        color: const Color.fromARGB(255, 255, 0, 0),
        notchColor: const Color.fromARGB(255, 255, 133, 133),
        onTap: (paramValue){
          setState(() {
            itemSelectedIndex = paramValue;
          });
        },
        notchBottomBarController: _controller,
        kIconSize: 20.0,
        kBottomRadius: 15.0,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              size: MediaQuery.of(context).size.width * 0.045,
              color: Colors.white,
            ),
            activeItem: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              size: MediaQuery.of(context).size.width * 0.045,
              color: Colors.black,
            ),
            itemLabel: 'คิดเงิน',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              FontAwesomeIcons.house,
              size: MediaQuery.of(context).size.width * 0.045,
              color: Colors.white,
            ),
            activeItem: Icon(
              FontAwesomeIcons.house,
              size: MediaQuery.of(context).size.width * 0.045,
              color: Colors.black,
            ),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              FontAwesomeIcons.star,
              size: MediaQuery.of(context).size.width * 0.045,
              color: Colors.white,
            ),
            activeItem: Icon(
              FontAwesomeIcons.star,
              
              size: MediaQuery.of(context).size.width * 0.045,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            itemLabel: 'เกี่ยวกับ',
          ),
        ],
      ),
    );
  }
}
