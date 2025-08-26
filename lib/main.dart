import 'package:flutter/material.dart';
import 'package:flutter_house_manager/pages/NoticeDetail.dart/index.dart';
import 'package:flutter_house_manager/pages/tabs_page/index.dart';

void main() {
  runApp(MaterialApp(
    // 运行应用
    routes: {
      // 路由
      "/": (context) => const TabsPage(), // 初始路由
      "/noticeDetail": (context) => const NoticelDetail(),
    },
    initialRoute: "/", // 初始路由
  ));
}
