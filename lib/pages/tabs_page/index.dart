import 'package:flutter/material.dart';
import 'package:flutter_enjoy_plus/pages/home/index.dart';
import 'package:flutter_enjoy_plus/pages/mine/index.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  List _tabList = [
    {
      "label": "首页",
      "icon": "assets/tabs/home_default.png",
      "activeIcon": "assets/tabs/home_active.png"
    },
    {
      "label": "我的",
      "icon": "assets/tabs/mine_default.png",
      "activeIcon": "assets/tabs/mine_active.png"
    }
  ];
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
        index: _currentIndex,
        children: const [
          HomeView(),
          MineView(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
        items: getTabsBar(),
      ),
    );
  }
}
