import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/PinController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';

class SignPInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _onEditing = true;
    PinController pinController = Get.put(PinController());

    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              // Text(AppString.pin),
              Flexible(
                  flex: 3,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  )),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("Liu Gani W", style: AppStyle.labelUserName),
                  )),

              Flexible(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: VerificationCode(
                        textStyle:
                            TextStyle(fontSize: 20.0, color: Colors.red[900]),
                        keyboardType: TextInputType.number,
                        // in case underline color is null it will use primaryColor: Colors.red from Theme
                        underlineColor: Colors.amber,
                        length: 4,
                        // clearAll is NOT required, you can delete it
                        // takes any widget, so you can implement your design
                        // clearAll: Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Text(
                        //     'clear all',
                        //     style: TextStyle(
                        //         fontSize: 14.0,
                        //         decoration: TextDecoration.underline,
                        //         color: Colors.blue[700]),
                        //   ),
                        // ),
                        onCompleted: (String value) {
                          pinController.onCompleted();
                          // setState(() {
                          //   _code = value;
                          // });
                        },
                        onEditing: (bool value) {
                          // setState(() {
                          //   _onEditing = value;
                          // });
                          if (!_onEditing) FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Center(
                    //     child: _onEditing
                    //         ? Text('Please enter full code')
                    //         : Text('Your code: $_code'),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
