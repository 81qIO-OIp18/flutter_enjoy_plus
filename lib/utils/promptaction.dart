import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PromptAction {
  // 正常消息
  static showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 255, 255, 255));
  }

  // 成功消息
  static showSuccess(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Color.fromARGB(255, 85, 238, 164),
        backgroundColor: Colors.white);
  }

  static showError(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Color.fromARGB(255, 255, 174, 108),
        backgroundColor: Color.fromARGB(255, 255, 25, 94));
  }

  static showWarning(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Color.fromARGB(31, 110, 255, 231),
        backgroundColor: Color.fromARGB(255, 121, 255, 58));
  }
}
