import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/view/contants.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    super.key,
    required this.text,
    required this.receiver,
  });
  final String text;
  final bool receiver;
  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      shadowColor: Colors.transparent,
      clipper: ChatBubbleClipper9(
          type: receiver ? BubbleType.receiverBubble : BubbleType.sendBubble),
      alignment: receiver ? Alignment.topLeft : Alignment.topRight,
      margin: EdgeInsets.only(top: 15),
      backGroundColor:
          receiver ? const Color.fromARGB(255, 88, 87, 87) : darkGreen,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(DateFormat("hh:mm a").format(DateTime.now()),
                      style: TextStyle(color: Colors.grey, fontSize: 11)),
                  SizedBox(width: 2),
                  Icon(Icons.check, color: Colors.grey, size: 13),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
