import 'package:flutter/material.dart';

/// 我的页面视图组件
class MineView extends StatefulWidget {
  const MineView({Key? key}) : super(key: key);

  @override
  _MineViewState createState() => _MineViewState();
}

class _MineViewState extends State<MineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 设置整体背景颜色为浅蓝色
      backgroundColor: const Color(0xFF81B5CF),
      // 顶部导航栏
      appBar: AppBar(
        title: const Text('我的',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xFF81B5CF),
        elevation: 0,
        actions: [
          // 右侧设置图标
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // 设置按钮点击事件
            },
          ),
        ],
      ),
      // 页面主体内容
      body: Column(
        children: [
          // 用户信息区域
          Container(
            color: const Color(0xFF81B5CF),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              children: [
                // 用户头像
                CircleAvatar(
                  radius: 40,
                  backgroundImage: const AssetImage('assets/images/avatar_1.jpg'),
                  // 添加头像边框
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // 用户信息 - 将用户名和完善信息文本放在一行，完善信息在右侧
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '用户名',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // 去完善信息按钮 - 移动到右侧
                      GestureDetector(
                        onTap: () {
                          // 完善信息点击事件
                        },
                        child: const Text(
                          '去完善信息 >',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 功能列表区域
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                // 我的房屋
                ListTile(
                  leading: Image.asset(
                    'assets/images/house_profile_icon@2x.png',
                    width: 24,
                    height: 24,
                  ),
                  title: const Text('我的房屋'),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    // 我的房屋点击事件
                  },
                ),
                const Divider(height: 1),
                // 我的报修
                ListTile(
                  leading: Image.asset(
                    'assets/images/repair_profile_icon@2x.png',
                    width: 24,
                    height: 24,
                  ),
                  title: const Text('我的报修'),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    // 我的报修点击事件
                  },
                ),
                const Divider(height: 1),
                // 访客记录
                ListTile(
                  leading: Image.asset(
                    'assets/images/visitor_profile_icon@2x.png',
                    width: 24,
                    height: 24,
                  ),
                  title: const Text('访客记录'),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    // 访客记录点击事件
                  },
                ),
              ],
            ),
          ),

          // 底部留白，让内容靠上
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
