import 'package:flutter/material.dart';
import 'package:flutter_house_manager/pages/home/compoment/homelist.dart';
import 'package:flutter_house_manager/pages/home/compoment/homenav.dart';
import 'package:flutter_house_manager/utils/PromptAction.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../api/home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    getAnnounceList();
  }

  getAnnounceList() async {
    final res = await getAnnounceListAPI();
    Fluttertoast.showToast(msg: "获取数据成功");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("享+社区"),
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          // 子组件分为三部分
          children: [
            // 导航组件
            const HomeNav(),
            Image.asset('assets/images/banner@2x.jpg'),
            // 列表组件
            const HomeList()
          ],
          // 设置列表纵向滚动
        ),
      ),
    );
  }
}
