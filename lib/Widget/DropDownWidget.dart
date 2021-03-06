import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  // String dropDownValue;
  double phoneWidth;

  DropDownWidget(
      {this.phoneWidth,
      //this.dropDownValue,
  });

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                  "انخاب کاربر",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Container(
                width: widget.phoneWidth / 2,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropDownValue3,
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
                    // onTap: () {
                    //   FocusManager.instance.primaryFocus.unfocus();
                    // },
                    onChanged: (String newValue) {
                      setState(() {
                        // FocusScope.of(context).requestFocus(new FocusNode());
                        dropDownValue3 = newValue;
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
        ),
        Container(
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
                  "کنترلر",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Container(
                width: widget.phoneWidth / 2,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropDownValue2,
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
                    // onTap: () {
                    //   FocusManager.instance.primaryFocus.unfocus();
                    // },
                    onChanged: (String newValue) {
                      setState(() {
                        // FocusScope.of(context).requestFocus(new FocusNode());
                        dropDownValue2 = newValue;
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
        ),
        Container(
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
                  "کنترل بخش اجرایی",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Container(
                width: widget.phoneWidth / 2,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropDownValue1,
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
                    // onTap: () {
                    //   FocusManager.instance.primaryFocus.unfocus();
                    // },
                    onChanged: (String newValue) {
                      setState(() {
                        // FocusScope.of(context).requestFocus(new FocusNode());
                        dropDownValue1 = newValue;
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
        ),
      ],
    );
  }
}
