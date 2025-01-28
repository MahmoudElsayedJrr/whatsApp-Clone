import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/contants.dart';

AppBar NewChatAppBar() {
  return AppBar(
    backgroundColor: darkGreen,
    iconTheme: IconThemeData(color: Colors.white),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Selected Contact',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('285 Contact',
            style: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300)),
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_outlined,
            color: Colors.white,
          )),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ))
    ],
  );
}
