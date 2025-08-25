import 'package:flutter/material.dart';

import '../Home/index.dart';
import '../Mine/index.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0; // 当前激活的索引
  List _tabList = [
    {
      "label": '首页',
      "icon": "assets/tabs/home_default.png",
      "active_icon": "assets/tabs/home_active.png"
    },
    {
      "label": '我的',
      "icon": "assets/tabs/my_default.png",
      "active_icon": "assets/tabs/my_active.png"
    }
  ];

  // 底部tabs栏的列表方法
  List<BottomNavigationBarItem> getTabsBar() {
    // 首页的tabs 和我的tabs
    List<BottomNavigationBarItem> tabsList = [];
    // push pop unshift shift
    for (var i = 0; i < _tabList.length; i++) {
      tabsList.add(
        BottomNavigationBarItem(
            icon: Image.asset(_tabList[i]["icon"], width: 30, height: 30),
            activeIcon:
                Image.asset(_tabList[i]["active_icon"], width: 30, height: 30),
            label: _tabList[i]["label"]),
      );
    }
    return tabsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: _currentIndex, // 0 => 渲染第一个组件 1 => 第二个组件
        children: const [
          HomeView(),
          MineView(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index; // 数据变化了 但是UI没有更新
          setState(() {});
        },
        items: getTabsBar(),
      ),
    );
  }
}
