// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BillUi extends StatefulWidget {
  int adultCountShow;
  int childCountShow;
  int cokeCountShow;
  int waterCountShow;
  String memberTypeShow;
  double totalAfterDiscountShow;
  String reciveBuffetDrinkShow;

  BillUi({
    super.key,
    required this.adultCountShow,
    required this.childCountShow,
    required this.cokeCountShow,
    required this.waterCountShow,
    required this.memberTypeShow,
    required this.totalAfterDiscountShow,
    required this.reciveBuffetDrinkShow,
  });

  @override
  State<BillUi> createState() => _BillUiState();
}

class _BillUiState extends State<BillUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Text(
          'ชำระเงิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.height * 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Text(
                  'จำนวนคน',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ผู้ใหญ่  ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                    Text(
                      widget.adultCountShow.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      '  คน',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'เด็ก  ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                    Text(
                      widget.childCountShow.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      '  คน',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Text(
                  'บุฟเฟต์น้ำดื่ม',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Text(
                  widget.reciveBuffetDrinkShow,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                    color: Colors.deepOrange,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'โค๊ก จำนวน  ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                    Text(
                      widget.cokeCountShow.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      '  ขวด',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'น้ำเปล่า จำนวน  ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                    Text(
                      widget.waterCountShow.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      '  ขวด',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.0125,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'ประเภทสมาชิก',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Text(
                  widget.memberTypeShow,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'รวมเป็นเงินทั้งสิ้น (บาท)',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.deepOrange,
                  child: Center(
                    child: Text(
                      widget.totalAfterDiscountShow.toStringAsFixed(2),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}