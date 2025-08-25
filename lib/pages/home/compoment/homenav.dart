import 'package:flutter/material.dart';

import '../../../components/NavCol.dart';

class HomeNav extends StatefulWidget {
  // ignore: use_super_parameters
  const HomeNav({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  // ignore: prefer_final_fields
  List _navList = [
    {'title': '我的房屋', 'icon': 'assets/images/house_nav_icon@2x.png'},
    {'title': '我的保修', 'icon': 'assets/images/repair_nav_icon@2x.png'},
    {'title': '访客登记', 'icon': 'assets/images/visitor_nav_icon@2x.png'}
  ];
  List<Widget> getNavListWidget(){
    return _navList.map((item){
      return NavCol(icon: item['icon'], title: item['title']);
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),color: Colors.white
      ),
      child: Row(
        children: getNavListWidget(),
      ),
    );
  }
}
