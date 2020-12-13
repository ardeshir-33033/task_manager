import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  String dropDownValue;
  double phoneWidth;
  String title;

  DropDownWidget({this.phoneWidth, this.dropDownValue, this.title});

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.phoneWidth,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(right: 15.0),
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
          Container(
            width: widget.phoneWidth / 2,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: widget.dropDownValue,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
                iconSize: 24,
                iconEnabledColor: Color(0xFFEb5151),
                iconDisabledColor: Color(0xFFEb5151),
                elevation: 16,
                onTap: () {
                  FocusManager.instance.primaryFocus.unfocus();
                },
                onChanged: (String newValue) {
                  setState(() {
                    // FocusScope.of(context).requestFocus(new FocusNode());
                    widget.dropDownValue = newValue;
                  });
                },
                items: <String>[
                  '1',
                  '2',
                  '3',
                  '4',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.only(left: widget.phoneWidth / 20),
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
