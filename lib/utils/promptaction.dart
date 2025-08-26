import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PromptAction {
  // 正常消息
  static showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 210, 207, 207));
  }

  // 成功消息
  static showSuccess(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 85, 238, 164));
  }

  static showError(String msg) {
    Fluttertoast.showToast(
        msg: msg, textColor: Colors.white, backgroundColor: Colors.red);
  }

  static showWarning(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Colors.black12,
        backgroundColor: Colors.yellowAccent);
  }
}
