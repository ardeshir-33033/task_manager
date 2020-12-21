import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    @required this.controller1,
    this.title,
    this.phoneWidth,
  });

  final TextEditingController controller1;
  final String title;
  double phoneWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: phoneWidth,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
          Container(
            width: phoneWidth / 1.4,
            padding: EdgeInsets.only(right: 10.0),
            child: Center(
              child: TextField(
                // focusNode: FocusNode(canRequestFocus: true),

                textAlign: TextAlign.center,
                controller: controller1,
                cursorColor: Colors.grey,
                cursorRadius: Radius.circular(5),
                onChanged: (value) {
                  // FocusScope.of(context).requestFocus(new FocusNode());
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
