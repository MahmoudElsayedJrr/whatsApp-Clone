import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/home_page/home_chat_page/custom_list_tile.dart';

class HomeChatPage extends StatelessWidget {
  const HomeChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 16),
      itemCount: 20,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: cutomListTileForPerson(
            ontap: () {},
            name: 'Mahmoud Elsayed',
            subtitle: 'im going to school now',
          ),
        );
      },
    );
  }
}
