import 'package:flutter/material.dart';
import 'package:task_manager/Widget/DropDownWidget.dart';
import 'package:task_manager/Widget/TextFieldWidget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue1;
  String dropdownValue2;
  String dropdownValue3;

  var _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropDownWidget(
              phoneWidth: phoneWidth,
              dropDownValue: dropdownValue1,
              title: "انتخاب کاربر",
            ),
            DropDownWidget(
              phoneWidth: phoneWidth,
              dropDownValue: dropdownValue2,
              title: "کنترلر",
            ),
            DropDownWidget(
              phoneWidth: phoneWidth,
              dropDownValue: dropdownValue3,
              title: "کنترل بخش اجرایی",
            ),
            TextFieldWidget(
              controller1: _controller1,
              title: "لیبل تسک",
              phoneWidth: phoneWidth,
            )
          ],
        ),
      ),
    );
  }
}
