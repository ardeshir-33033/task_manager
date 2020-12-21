import 'package:flutter/material.dart';
import 'datepicker.dart';

class TaghvimPicker extends StatefulWidget {
  String title;

  TaghvimPicker({this.title});

  @override
  _TaghvimPickerState createState() => _TaghvimPickerState();
}

class _TaghvimPickerState extends State<TaghvimPicker> {
  String _valuePiker;
  String _datetime = '';
  String _format = 'yyyy-mm-dd';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            GestureDetector(
              onTap: () {
                _showDatePicker();
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: _valuePiker == null
                    ? Text(
                        "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}")
                    : Text(
                        _valuePiker,
                        textAlign: TextAlign.center,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDatePicker() {
    final bool showTitleActions = false;
    DatePicker.showDatePicker(context,
        minYear: 1300,
        maxYear: 1450,
/*      initialYear: 1368,
      initialMonth: 05,
      initialDay: 30,*/
        confirm: Text(
          'تایید',
          style: TextStyle(color: Colors.red),
        ),
        cancel: Text(
          'لغو',
          style: TextStyle(color: Colors.cyan),
        ),
        dateFormat: _format, onChanged: (year, month, day) {
      if (!showTitleActions) {
        _changeDatetime(year, month, day);
      }
    }, onConfirm: (year, month, day) {
      _changeDatetime(year, month, day);
      _valuePiker = "$_datetime  ";
      //"\n Year : $year \n  Month :   $month \n  Day :  $day";
    });
  }

  void _changeDatetime(int year, int month, int day) {
    setState(() {
      _datetime = '$year-$month-$day';
    });
  }
}
