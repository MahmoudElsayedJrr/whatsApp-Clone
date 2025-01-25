import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/contants.dart';

class BottomChatBar extends StatelessWidget {
  const BottomChatBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 50,
          maxHeight: 120,
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              width: MediaQuery.of(context).size.width - 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    IconButton(
                      icon:
                          Icon(Icons.emoji_emotions_outlined, color: darkGreen),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        expands: true,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Type a message",
                          hintStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.attach_file, color: darkGreen),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.camera_alt, color: darkGreen),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: darkGreen,
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*TextFormField(
                maxLines: 5,
                minLines: 1,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.emoji_emotions_outlined,
                            color: darkGreen)),
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Type a Message',
                    suffix: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attach_file_outlined,
                              color: darkGreen)),
                    )),
              ), */