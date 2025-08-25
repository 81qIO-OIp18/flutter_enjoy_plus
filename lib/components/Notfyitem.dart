

import 'package:flutter/material.dart';

class NotfyItem extends StatefulWidget {
  // ignore: use_super_parameters
  const NotfyItem({Key? key,required this.item}) : super(key: key);
  final Map item;

  @override
  // ignore: library_private_types_in_public_api
  _NotfyItemState createState() => _NotfyItemState();
}

class _NotfyItemState extends State<NotfyItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.item["title"],
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
           const SizedBox(
              height: 10,
            ),
            Text(
              widget.item["content"],
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.item["createAt"],
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
// Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child:Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               item["title"],
//               style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//            const SizedBox(
//               height: 10,
//             ),
//             Text(
//               item["content"],
//               style: const TextStyle(
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               item["createAt"],
//               style: const TextStyle(
//                   fontSize: 14,
//                   color: Colors.black),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//           ],
//         ));