import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {// 构造函数
  // ignore: use_super_parameters
  const TabsPage({Key? key}) : super(key: key);// 构造函数

  @override
  State<TabsPage> createState() => _TabsPageState();// 状态类
}

class _TabsPageState extends State<TabsPage> {// 状态类
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(// 容器
      child: const Text("主页"),// 文本
    );
  }
}
