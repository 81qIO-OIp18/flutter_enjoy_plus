import 'package:flutter/material.dart';
import 'package:flutter_enjoy_plus/pages/tabs_page/index.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (context) => const TabsPage(),
    },
    initialRoute: "/",
  ));
}
