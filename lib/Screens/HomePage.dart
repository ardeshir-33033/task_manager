import 'package:flutter/material.dart';
import 'package:task_manager/Calendar/TaghvimPicker.dart';
import 'package:task_manager/Calendar/datepicker.dart';
import 'package:task_manager/CameraStuff/Camera.dart';
import 'package:task_manager/CameraStuff/Service.dart';
import 'package:task_manager/SpeechToText/Speech.dart';
import 'package:task_manager/Widget/CameraWidget.dart';
import 'package:task_manager/Widget/DropDownWidget.dart';
import 'package:task_manager/Widget/DropDownWidget2.dart';
import 'package:task_manager/Widget/TextFieldWidget.dart';
import 'dart:io';

class MyHomePage extends StatefulWidget {
  TimeOfDay picker;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue1;
  String dropdownValue2;
  String dropdownValue3;

  bool checkBoxVal = false;

  var _controller1 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropDownWidget(
                phoneWidth: phoneWidth,
              ),
              TextFieldWidget(
                controller1: _controller1,
                title: "لیبل تسک",
                phoneWidth: phoneWidth,
              ),
              Container(
                width: phoneWidth,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: GestureDetector(
                  onTap: () async {
                    widget.picker = await showTimePicker(
                      initialEntryMode: TimePickerEntryMode.input,
                      context: context,
                      initialTime: TimeOfDay(hour: 00, minute: 00),
                      builder: (BuildContext context, Widget child) {
                        return MediaQuery(
                          data: MediaQuery.of(context)
                              .copyWith(alwaysUse24HourFormat: true),
                          child: child,
                        );
                      },
                    );
                    setState(() {});
                  },
                  child: widget.picker == null
                      ? Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('00:00'),
                        )
                      : Container(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(widget.picker.minute.toString()),
                              Text(':'),
                              Text(
                                widget.picker.hour.toString(),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
              TaghvimPicker(
                title: 'تاریخ شروع',
              ),
              TaghvimPicker(
                title: 'تاریخ پایان',
              ),
              DropDownWidget2(phoneWidth: phoneWidth),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Color(0xFFeb5151),
                title: Text(
                  "اضافه شدن به تسک امروز",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 25),
                ),
                value: checkBoxVal,
                onChanged: (value) {
                  checkBoxVal = value;
                  // setSelectedCheckBox1(e, value);
                  setState(() {});
                },
              ),
              GestureDetector(
                child: Container(
                  // width: phoneWidth,
                  height: 100,
                  child: Speech(),
                ),
              ),
              CameraWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
