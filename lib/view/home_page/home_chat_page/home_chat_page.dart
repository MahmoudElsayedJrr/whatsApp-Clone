import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/chat_page/chat_page.dart';
import 'package:whatsapp_clone/view/contants.dart';

import 'package:whatsapp_clone/view/home_page/home_chat_page/custom_list_tile.dart';

class HomeChatPage extends StatelessWidget {
  const HomeChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat, color: Colors.white),
        backgroundColor: darkGreen,
        shape: CircleBorder(),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16),
        itemCount: 20,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: cutomListTileForPerson(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(),
                    ));
              },
              name: 'Mahmoud Elsayed',
              subtitle: 'im going to school now',
            ),
          );
        },
      ),
    );
  }
}
