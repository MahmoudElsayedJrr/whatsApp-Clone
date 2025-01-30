import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/chat_page/bottom_chat_bar.dart';
import 'package:whatsapp_clone/view/chat_page/chat_container.dart';
import 'package:whatsapp_clone/view/contants.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  void connectToServer() {
    final socket = io.io('http://192.168.1.10:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket.connect();
    socket.emit("/testevent", "Hello from Flutter");
    socket.onConnect((data) => print('Conected'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/peakpx.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatContainer(
                    text: 'fdsklfjkldsfkjdsjfkldsk', receiver: true);
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomChatBar(),
            )
          ],
        ),
      ),
    );
  }
}

/*---------------------------------------------------------------------------------------*/
class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: MediaQuery.of(context).size.width * 0.6,
      backgroundColor: lightGreen,
      automaticallyImplyLeading: false,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              'Mahmoud Elsayed',
              style: const TextStyle(color: Colors.white, fontSize: 17),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
