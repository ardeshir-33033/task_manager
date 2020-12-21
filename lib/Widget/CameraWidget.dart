import 'package:flutter/material.dart';
import 'package:task_manager/CameraStuff/Camera.dart';
import 'dart:io';

import 'package:task_manager/CameraStuff/Service.dart';

class CameraWidget extends StatefulWidget {
  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  bool inProgress = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    content: new SingleChildScrollView(
                      child: new ListBody(
                        children: <Widget>[
                          GestureDetector(
                              child: new Text(
                                'گرفتن عکس',
                                style: TextStyle(
                                    color: Colors.grey.shade700),
                              ),
                              onTap: () {
                                inProgress = true;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Camera(
                                        captureCallBack:
                                            (result) async {
                                          var capturesFile = File(result);
                                          // RegisterBusiness()
                                          //     .setNewPicture(result);
                                          setState(() {});

                                          if (capturesFile != null) {
                                            // var uploadResult =
                                            // await RegisterBusiness()
                                            //     .uploadImage(capturesFile,
                                            //     _register.id);
                                            //
                                            // if (uploadResult.isSuccess) {
                                            //   inProgress = false;
                                            //   setState(() {});

                                            return showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                context) {
                                                  return AlertDialog(
                                                    backgroundColor:
                                                    Colors.white,
                                                    content:
                                                    new SingleChildScrollView(
                                                      padding:
                                                      const EdgeInsets
                                                          .only(
                                                          right: 0),
                                                      child: Center(
                                                        child: Text(
                                                            'اطلاعات شما با موفقیت ثبت شد'),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          }
                                          inProgress = false;
                                          Navigator.pop(context);
                                        }),
                                  ),
                                );

                                inProgress = false;
                                setState(() {});
                              }),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                          ),
                          GestureDetector(
                              child: Text(
                                'انتخاب از گالری',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              onTap: () async {
                                inProgress = true;
                                var selectedFile =
                                await EndPointService()
                                    .getImageFromGallery(
                                    0, "image");

                                if (selectedFile != null) {
                                  // var uploadResult =
                                  // await RegisterBusiness().uploadImage(
                                  //     selectedFile, _register.id);

                                  // if (uploadResult.isSuccess) {
                                  //   // RegisterBusiness()
                                  //   //     .setNewPicture(selectedFile.path);
                                  //
                                  //   inProgress = false;
                                  //
                                  //   setState(() {});
                                  //   return showDialog(
                                  //       context: context,
                                  //       builder: (BuildContext context) {
                                  //         return AlertDialog(
                                  //           backgroundColor: Colors.white,
                                  //           content:
                                  //           new SingleChildScrollView(
                                  //             padding:
                                  //             const EdgeInsets.only(
                                  //                 right: 0),
                                  //             child: Center(
                                  //               child: Text(
                                  //                   'اطلاعات شما با موفقیت ثبت شد'),
                                  //             ),
                                  //           ),
                                  //         );
                                  //       });
                                  // }
                                }

                                //Navigator.pop(context);
                                inProgress = false;
                                setState(() {});
                              }),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 5,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Icon(Icons.camera_alt)),
          ),
        ],
      ),
    );
  }
}
