import 'package:flutter/material.dart';

class NoticelDetail extends StatefulWidget {
  const NoticelDetail({Key? key}) : super(key: key);

  @override
  _NoticeDetailState createState() => _NoticeDetailState();
}

class _NoticeDetailState extends State<NoticelDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final params = ModalRoute.of(context)?.settings.arguments; // 从另外一个生命周期获取参数
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("通知详情"),
      ),
    );
  }
}
