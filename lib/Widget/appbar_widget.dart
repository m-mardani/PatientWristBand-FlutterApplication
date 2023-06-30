import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.info_circle_fill;
  return AppBar(
    leading: BackButton(
      color: Colors.black,
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: const Color.fromARGB(255, 23, 4, 99),
          ))
    ],
  );
}
