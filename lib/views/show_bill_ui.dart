import 'dart:io';

import 'package:flutter/material.dart';

class ShowBillUi extends StatefulWidget {
  //สร้างตัวแปรเพือรับข้อมูลจาก CallBillUi
  int? numAdult;
  int? numChild;
  int? numCoke;
  int? numPure;
  double? payWaterBuffet;
  double? payBuffetTotalNoSale;
  double? paySale;
  double? payBuffetTotal;
  File? imagefile;

  //เอาตัวแปรที่สร้างไปรับข้อมูลที่ส่งมาจาก CallBillUi
  ShowBillUi({
    super.key,
    this.numAdult,
    this.numChild,
    this.numCoke,
    this.numPure,
    this.payWaterBuffet,
    this.payBuffetTotalNoSale,
    this.paySale,
    this.payBuffetTotal,
    File? imagefile,
  });

  @override
  State<ShowBillUi> createState() => _ShowBillUiState();
}

class _ShowBillUiState extends State<ShowBillUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('ใบเสร็จรับเงิน'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              widget.imagefile == null
                  ? Image.asset(
                      'assets/icon/Microsoft-Fluentui-Emoji-3d-Shallow-Pan-Of-Food-3d.512.png',
                      width: 150,
                      height: 150,
                    )
                  : Image.file(
                      widget.imagefile!,
                      width: 200,
                      height: 200,
                    ),
              SizedBox(
                height: 40,
              ),
              Text(
                'รายละเอียดใบเสร็จรับเงิน',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนผู้ใหญ่ ${widget.numAdult} คน',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนเด็ก ${widget.numChild} คน',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนโค้ก ${widget.numCoke} ขวด  ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนน้ำเปล่า ${widget.numPure} ขวด',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนเงินบุฟเฟ่ต์น้ำ ${widget.payWaterBuffet} บาท',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'ส่วนลดเป็นเงิน ${widget.paySale} บาท',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'รวมต้องจ่าย ${widget.payBuffetTotal} บาท',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/payqr.png',
                width: 150,
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }
}
