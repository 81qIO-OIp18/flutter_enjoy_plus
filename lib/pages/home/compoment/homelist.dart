import 'package:flutter/material.dart';

import '../../../components/Notfyitem.dart';

class HomeList extends StatefulWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  // ignore: prefer_final_fields
  List _list = [
    {
      'title': '如何优化嵌套层级？',
      'content':
          "减少 build() 负担：避免在 build() 方法中执行耗时操作或创建过多子控件。如果 build() 逻辑过于复杂，应拆分成更小的子组件，以便局部刷新docs.flutter.dev。尽量在需要更新的最内层组件调用 setState()，而不是顶层，这样只有一小部分子树重建，减少不必要的计算docs.flutter.dev。",
      "createAt": "2024-08-22 15:00:00"
    },
    {
      'title': '使用 const 构造函数：',
      'content':
          "尽可能给不会变的 Widget 使用 const 构造，这样 Flutter 在重建时会重用已有实例，跳过大量比较和创建对象的开销docs.flutter.dev。同时开启 flutter_lints 推荐的规则，会自动提示可以加 const 的地方。",
      "createAt": "2024-08-22 15:00:00"
    },
    {
      'title': '列表和网格优化',
      'content':
          "对于长列表或网格，应使用惰性构建的构造函数（如 ListView.builder、GridView.builder）而非一次性构建所有子项，以避免创建大量暂时不显示的 Widgetdocs.flutter.dev。",
      "createAt": "2024-08-22 15:00:00"
    },
  ];

  Widget getTitleWeidGet() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            "assets/images/notice@2x.png",
            width: 25,
            height: 25,
          ),
          const Text(
            "社区",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          const Text(
            "公告",
            style: TextStyle(color: Colors.orange, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget getListBuilder() {
    return
     ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: _list.map((item) {
        return NotfyItem(item: item);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          getTitleWeidGet(),
          getListBuilder(),
        ],
      ),
    );
  }
}






