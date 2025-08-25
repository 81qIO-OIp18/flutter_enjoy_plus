

import 'package:flutter/material.dart';
import 'package:flutter_enjoy_plus/pages/tabs_page/index.dart';

void main() {
  runApp(MaterialApp(// 运行应用
    routes: {// 路由
      "/": (context) => const TabsPage(),// 初始路由
    },
    initialRoute: "/",// 初始路由
  ));
}
