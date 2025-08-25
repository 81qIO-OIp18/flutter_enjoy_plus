import 'package:flutter/material.dart';

class NavCol extends StatefulWidget {
  // ignore: use_super_parameters
  const NavCol({Key? key, required this.icon, required this.title})
      : super(key: key);
  final String icon;
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _NavColState createState() => _NavColState();
}

class _NavColState extends State<NavCol> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Image.asset(
          widget.icon,
          width: 35,
          height: 35,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(widget.title)
      ],
    ));
  }
}
