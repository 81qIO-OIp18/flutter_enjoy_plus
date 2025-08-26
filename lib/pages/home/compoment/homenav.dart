import 'package:flutter/material.dart';

import '../../../components/NavCol.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  List _navList = [
    {'title': '我的房屋', 'icon': 'assets/images/house_nav_icon@2x.png'},
    {'title': '我的保修', 'icon': 'assets/images/repair_nav_icon@2x.png'},
    {'title': '访客登记', 'icon': 'assets/images/visitor_nav_icon@2x.png'}
  ];

  List<Widget> getNavListWidget() {
    // expand 拉伸 均分的意思  类似layoutWeight
    return _navList.map((item) {
      return NavCol(icon: item["icon"], title: item["title"]);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: getNavListWidget(),
      ),
    );
  }
}
