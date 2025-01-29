import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/new_chat/NewAddGroupPage.dart';

import 'package:whatsapp_clone/view/new_chat/new_chat_appbar.dart';
import 'package:whatsapp_clone/view/new_chat/selectedAndUnselectedContactListTile.dart';

class NewChat extends StatelessWidget {
  const NewChat({super.key});

  @override
  Widget build(BuildContext context) {
    List<contactListTile> contacts = [
      contactListTile(
          name: 'New Group',
          subname: '',
          img: 'assets/group-non.svg',
          backgroundColor: Colors.green,
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewAddGroupPage()));
          }),
      contactListTile(
          name: 'Add Contact',
          subname: '',
          img: 'assets/group-non.svg',
          backgroundColor: Colors.green,
          ontap: () {}),
      contactListTile(
          name: 'Nadiir Magdy',
          subname: 'Elrgollla',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Mahmoud Elsayed',
          subname: 'Dodo Moto',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Mahmoud Elsayed',
          subname: 'Dodo Moto',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Mahmoud Elsayed',
          subname: 'Dodo Moto',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Mahmoud Elsayed',
          subname: 'Dodo Moto',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Nadiir Magdy',
          subname: 'Elrgollla',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Nadiir Magdy',
          subname: 'Elrgollla',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Nadiir Magdy',
          subname: 'Elrgollla',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Nadiir Magdy',
          subname: 'Elrgollla',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
      contactListTile(
          name: 'Nadiir Magdy',
          subname: 'Elrgollla',
          img: 'assets/person-non.svg',
          backgroundColor: Colors.grey,
          ontap: () {}),
    ];

    return Scaffold(
      appBar: NewChatAppBar(),
      body: Center(
          child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return contactListTile(
            backgroundColor: contacts[index].backgroundColor,
            img: contacts[index].img,
            name: contacts[index].name,
            ontap: contacts[index].ontap,
            subname: contacts[index].subname,
          );
        },
      )),
    );
  }
}
