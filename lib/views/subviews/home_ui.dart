// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, unused_element, sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'เมนูเด็ด',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      child: Container(
                        child: Image.asset(
                          'assets/images/img1.png',
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                        alignment: FractionalOffset.center,
                        margin:
                            EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/img2.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/img3.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/img4.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/img5.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/img6.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/img7.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 0.2,
              ),
              Center(
                child: Text(
                  'ร้านในเครือ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/shop1.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/shop2.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/shop3.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/shop4.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/shop5.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      alignment: FractionalOffset.center,
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
