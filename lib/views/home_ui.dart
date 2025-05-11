import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iot_mukrata_project/views/about_ui.dart';
import 'package:iot_mukrata_project/views/cal_bill_ui.dart';
import 'package:iot_mukrata_project/views/menu_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  // ตัวควบคุมการเปลี่ยนหน้า item ของ aimated notch bottom bar
  final itemCtrl = NotchBottomBarController(index: 1);

  //สรร้างตัวแปรเก็บ Ui ที่จะแสดง ซึ่งล้อกับ item ของ animated notch bottom bar ที่เลือก
  List<Widget> itemUIShow = [
    CallBillUi(),
    MenuUI(),
    AboutUi(),
  ];

  //สร้างตัวแปรเก็บ index ของ item ที่เลือก
  int selectIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        onTap: (valueParam) {
          setState(() {
            selectIndex = valueParam;
          });
        },
        notchBottomBarController: itemCtrl,
        color: Colors.blueAccent,
        notchColor: Colors.blueAccent,
        kIconSize: 24.0,
        kBottomRadius: 28.0,
        bottomBarItems: [
          BottomBarItem(
            itemLabel: 'คิดเงิน',
            activeItem: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            itemLabel: 'หน้าหลัก',
            activeItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            itemLabel: 'เกี่ยวกับ',
            activeItem: Icon(
              FontAwesomeIcons.star,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              FontAwesomeIcons.star,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: itemUIShow[selectIndex],
    );
  }
}
