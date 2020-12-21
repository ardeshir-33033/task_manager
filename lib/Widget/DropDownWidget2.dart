import 'package:flutter/material.dart';

class DropDownWidget2 extends StatefulWidget {
  // String dropDownValue;
  double phoneWidth;

  DropDownWidget2({
    this.phoneWidth,
    //this.dropDownValue,
  });

  @override
  _DropDownWidget2State createState() => _DropDownWidget2State();
}

class _DropDownWidget2State extends State<DropDownWidget2> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  String dropDownValue4;
  String dropDownValue5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widget.phoneWidth,

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
                  "پروژه",
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
                          padding:
                              EdgeInsets.only(left: widget.phoneWidth / 20),
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
                  "دسته بندی",
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
                          padding:
                              EdgeInsets.only(left: widget.phoneWidth / 20),
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
                  "اقدام ها",
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
                          padding:
                              EdgeInsets.only(left: widget.phoneWidth / 20),
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
                  "واحد ها",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Container(
                width: widget.phoneWidth / 2,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropDownValue4,
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
                        dropDownValue4 = newValue;
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
                          padding:
                              EdgeInsets.only(left: widget.phoneWidth / 20),
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
                  "اهمیت",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Container(
                width: widget.phoneWidth / 2,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropDownValue5,
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
                        dropDownValue5 = newValue;
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
                          padding:
                              EdgeInsets.only(left: widget.phoneWidth / 20),
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
