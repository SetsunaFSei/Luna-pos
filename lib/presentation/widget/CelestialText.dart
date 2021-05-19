import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';

class CelestialText {
  Widget celestialTextField(String title, TextEditingController controller,
          {bool isPassword = false}) =>
      TextField(
          controller: controller,
          // keyboardType: TextInputType.number,
          obscureText: isPassword,
          decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: new BorderSide(color: Colors.teal)),
              fillColor: AppColor.textGrey,
              labelText: title,
              filled: true,
              labelStyle: TextStyle(fontSize: 14)));

  Widget celestialTextFieldNumberOnly(
          String title, TextEditingController controller) =>
      TextField(
        controller: controller,
        keyboardType: TextInputType.number,
      );

  Widget celestialTextFieldIconLeft(
          TextEditingController controller, String title, Icon icon,
          {bool isPassword = false}) =>
      Container(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: AppColor.textGrey,
              labelText: title,
              prefixIcon: icon,
              filled: true,
              labelStyle: TextStyle(fontSize: 14)),
          controller: controller,
          obscureText: isPassword,
        ),
      );

  Widget celestialTextBorder(TextEditingController controller, String title,
          Icon icon, Icon rightIcon,
          {bool isPassword = false}) =>
      TextField(
        decoration: new InputDecoration(
          border: InputBorder.none,
          fillColor: Color(0xfff3f3f4),
          prefixIcon: icon,
          suffixIcon: rightIcon,
          // labelText: title,
          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[800]),
          hintText: title,
        ),
        controller: controller,
        obscureText: isPassword,
      );

  Widget buildTextField(IconData icon, String hintText, bool isPassword,
      bool isEmail, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: AppColor.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.textNormal),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.textNormal),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: AppColor.textNormal),
        ),
      ),
    );
  }
}
