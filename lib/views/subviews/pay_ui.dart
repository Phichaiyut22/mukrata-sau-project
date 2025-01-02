// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, duplicate_import, unused_import, unrelated_type_equality_checks

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mukrata_sau_project/views/subviews/bill_ui.dart';
import 'package:mukrata_sau_project/views/subviews/bill_ui.dart';

class PayUi extends StatefulWidget {
  const PayUi({super.key});

  @override
  State<PayUi> createState() => _PayUiState();
}

class _PayUiState extends State<PayUi> {
// Selected Dropdown
  String? _selectedPrivilege = '1';

  // List Dropdown Controlor
  List<DropdownMenuItem<String>> get _dropdownItemsMember {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        value: "1",
        child: Text(
          "ไม่เป็นสมาชิก",
          style: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.0155,
          ),
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Text(
          "สมาชิก Silver Member ลด 5%",
          style: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.0155,
          ),
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Text(
          "สมาชิก Gold Member ลด 10%",
          style: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.0155,
          ),
        ),
      ),
      DropdownMenuItem(
        value: "20",
        child: Text(
          "สมาชิก Platinum Member ลด 20%",
          style: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.0155,
          ),
        ),
      ),
    ];
    return menuItems;
  }

  // Checkbox
  bool? custormer1Check = false;
  bool? custormer2Check = false;

  // Radio Controlor
  String? _selectedDrink = '25';
  int cokebottom = 1;
  int waterbottom = 1;
  // TextField Controlor
  TextEditingController adultCtrl = TextEditingController(text: '');
  TextEditingController childCtrl = TextEditingController(text: '');
  TextEditingController cokeCtrl = TextEditingController(text: '');
  TextEditingController waterCtrl = TextEditingController(text: '');
  TextEditingController buffetDrinkCtrl = TextEditingController(text: '');
  // Warning Message
  warningMessage(context, msg) {
    return showDialog(
      
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Container(
          padding: EdgeInsets.all(5.0),
          child: Text(
            'คำเตือน',
          ),
        ),
        content: Text(
          msg,
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ตกลง',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      // margin: EdgeInsets.only(
                      //   right: MediaQuery.of(context).size.width * 0.69,
                      // ),
                      child: Text(
                        'จำนวนคน',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (paramValue) {
                          setState(() {
                            custormer1Check = paramValue;
                            if (custormer1Check == true) {
                              adultCtrl.text = '1';
                            } else {
                              adultCtrl.text = '';
                            }

                            // custormer1Check = paramValue!;
                            // if (paramValue == false) {
                            //   adultCtrl.text = '';
                            // }
                          });
                        },
                        value: custormer1Check,
                        activeColor: Colors.deepOrange,
                        side: BorderSide(
                          color: Colors.deepOrange,
                        ),
                      ),
                      Text(
                        'ผู้ใหญ่ 299 บาท/คน จำนวน',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01,
                          right: MediaQuery.of(context).size.width * 0.01,
                        ),
                        width: MediaQuery.of(context).size.width * 0.075,
                        child: TextField(
                          enabled: custormer1Check == true,
                          controller: adultCtrl,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r"^[1-9]\d{0,2}$"),
                            ),
                          ],
                          decoration: InputDecoration(
                            hintText: '0',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'คน',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (paramValue) {
                          setState(() {
                            custormer2Check = paramValue;
                            if (custormer2Check == true) {
                              childCtrl.text = '1';
                            } else {
                              childCtrl.text = '';
                            }
                            // custormer2Check = paramValue!;
                            // if (paramValue == false) {
                            //   childCtrl.text = '';
                            // }
                          });
                        },
                        value: custormer2Check,
                        activeColor: Colors.deepOrange,
                        side: BorderSide(
                          color: Colors.deepOrange,
                        ),
                      ),
                      Text(
                        'เด็ก 69 บาท/คน จำนวน',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01,
                          right: MediaQuery.of(context).size.width * 0.01,
                        ),
                        width: MediaQuery.of(context).size.width * 0.075,
                        child: TextField(
                          enabled: custormer2Check == true,
                          controller: childCtrl,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r"^[1-9]\d{0,2}$"),
                            ),
                          ],
                          decoration: InputDecoration(
                            hintText: '0',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'คน',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        'บุปเฟต์น้ำดื่ม',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        onChanged: (paramValue) {
                          setState(() {
                            _selectedDrink = paramValue!;
                            if (paramValue == '25') {
                              buffetDrinkCtrl.text = '25';
                              cokeCtrl.text = '';
                              waterCtrl.text = '';
                            } else {
                              buffetDrinkCtrl.text = '';
                            }
                          });
                        },
                        value: "25",
                        groupValue: _selectedDrink,
                        activeColor: Colors.deepOrange,
                      ),
                      Text(
                        'รับ 25 บาท/หัว',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        onChanged: (paramValue) {
                          setState(() {
                            _selectedDrink = paramValue!;
                            //  custormer1Check = paramValue!;
                            if (_selectedDrink == '0') {
                              cokeCtrl.text = '1';
                              waterCtrl.text = '1';
                            } else {
                              cokeCtrl.text = '';
                              waterCtrl.text = '';
                            }
                          });
                        },
                        value: "0",
                        groupValue: _selectedDrink,
                        activeColor: Colors.deepOrange,
                      ),
                      Text(
                        'ไม่รับ',
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.125,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'โค๊ก 20 บาท/ขวด จำนวน',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01,
                            right: MediaQuery.of(context).size.width * 0.01,
                          ),
                          width: MediaQuery.of(context).size.width * 0.075,
                          child: TextField(
                            controller: cokeCtrl,
                            enabled: _selectedDrink == '0',
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp(r"^[1-9]\d{0,2}$"),
                              ),
                            ],
                            decoration: InputDecoration(
                              hintText: '0',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'ขวด',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.125,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'น้ำเปล่า 15 บาท/ขวด จำนวน',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01,
                            right: MediaQuery.of(context).size.width * 0.01,
                          ),
                          width: MediaQuery.of(context).size.width * 0.075,
                          child: TextField(
                            controller: waterCtrl,
                            enabled: _selectedDrink == '0',
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp(r"^[1-9]\d{0,2}$"),
                              ),
                            ],
                            decoration: InputDecoration(
                              hintText: '0',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'ขวด',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        'ประเภทสมาชิก',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0125,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      items: _dropdownItemsMember,
                      value: _selectedPrivilege,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedPrivilege = value;
                        });
                      },
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                      iconEnabledColor: Colors.deepOrange,
                      dropdownColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.12,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: ElevatedButton(
                            onPressed: () {
                              if (custormer1Check == true &&
                                  custormer2Check == false) {
                                if (adultCtrl.text.isEmpty) {
                                  warningMessage(
                                      context, 'กรุณาป้อนจำนวนผู้ใหญ่ด้วย');
                                  return;
                                }
                              }
                              if (custormer1Check == false &&
                                  custormer2Check == true) {
                                if (childCtrl.text.isEmpty) {
                                  warningMessage(
                                      context, 'กรุณาป้อนจำนวนเด็กด้วย');
                                  return;
                                }
                              }
                              if (custormer1Check == true &&
                                  custormer2Check == true) {
                                if (adultCtrl.text.isEmpty &&
                                    childCtrl.text.isEmpty) {
                                  warningMessage(context,
                                      'กรุณาป้อนจำนวนผู้ใหญ่และเด็กด้วย');
                                  return;
                                }
                              }
                              if (custormer1Check == false &&
                                  custormer2Check == false) {
                                warningMessage(
                                    context, 'กรุณาระบุกลุ่มผู้ใช้บริการด้วย');
                                return;
                              } else if (_selectedDrink == '0' &&
                                  cokeCtrl.text.isEmpty &&
                                  waterCtrl.text.isEmpty) {
                                warningMessage(context,
                                    'กรุณากรอกจำนวนโค้กหรือน้ำเปล่าอย่างน้อยหนึ่งรายการ');
                                return;
                              }

                              // Add your logic here for when the checks and controls are valid

                              ///////////////////////////////////////////
                              // Convert
                              int adultCount =
                                  int.tryParse(adultCtrl.text) ?? 0;
                              int childCount =
                                  int.tryParse(childCtrl.text) ?? 0;
                              int cokeCount = int.tryParse(cokeCtrl.text) ?? 0;
                              int waterCount =
                                  int.tryParse(waterCtrl.text) ?? 0;

                              // Prices
                              int adultPrice = 299;
                              int childPrice = 69;
                              // int buffetDrinkPrice = 25;
                              int cokePrice = 20;
                              int waterPrice = 15;
                              // -------------
                              int buffetDrinkPrice = 25;
                              if (_selectedDrink == "0") {
                                buffetDrinkPrice = 0;
                              }

                              // Total costs
                              int totalAdultCost = adultCount * adultPrice;
                              int totalChildCost = childCount * childPrice;
                              int totalCokeCost = cokeCount * cokePrice;
                              int totalWaterCost = waterCount * waterPrice;
                              int totalBuffetDrinkCost =
                                  (adultCount + childCount) * buffetDrinkPrice;

                              // Total costs without discount
                              int totalBeforeDiscount = (totalAdultCost +
                                  totalChildCost +
                                  totalBuffetDrinkCost +
                                  totalCokeCost +
                                  totalWaterCost);

                              // Membership discount
                              double discount = 0;
                              String memberType = "ไม่เป็นสมาชิก";
                              if (_selectedPrivilege == "5") {
                                discount = 0.05; // 5% for Silver Member
                                memberType = "สมาชิก Silver Member ลด 5%";
                              } else if (_selectedPrivilege == "10") {
                                discount = 0.10; // 10% for Gold Member
                                memberType = "สมาชิก Gold Member ลด 10%";
                              } else if (_selectedPrivilege == "20") {
                                discount = 0.20; // 20% for Platinum Member
                                memberType = "สมาชิก Platinum Member ลด 20%";
                              }
                              // BuffetDrink
                              String reciveBuffetDrink = "รับ 25 บาท/หัว";
                              if (_selectedDrink == "0") {
                                reciveBuffetDrink = "ไม่รับ";
                              }

                              // Total after discount
                              double totalAfterDiscount =
                                  totalBeforeDiscount * (1 - discount);

                              // Tranfer to BillingUi()
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BillUi(
                                    adultCountShow: adultCount,
                                    childCountShow: childCount,
                                    cokeCountShow: cokeCount,
                                    waterCountShow: waterCount,
                                    memberTypeShow: memberType,
                                    totalAfterDiscountShow: totalAfterDiscount,
                                    reciveBuffetDrinkShow: reciveBuffetDrink,
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.calculator,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.025,
                                ),
                                Text(
                                  'คำนวนเงิน',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.016,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 255, 60, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width * 0.12,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                custormer1Check = false;
                                custormer2Check = false;
                                adultCtrl.text = '';
                                childCtrl.text = '';
                                _selectedDrink = '25';
                                cokeCtrl.text = '';
                                waterCtrl.text = '';
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.x,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.025,
                                ),
                                Text(
                                  'ยกเลิก',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.016,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
