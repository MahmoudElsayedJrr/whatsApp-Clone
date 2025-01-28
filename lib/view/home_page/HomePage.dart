import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/home_page/home_chat_page/home_chat_page.dart';
import 'package:whatsapp_clone/view/contants.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightGreen,
        title: Text(
          'Whats App',
          style: TextStyle(color: whiteColor),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: whiteColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: whiteColor,
              ),
              onPressed: () {}),
        ],
        bottom: TabBar(
            padding: EdgeInsets.symmetric(vertical: 3),
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            labelColor: whiteColor,
            indicatorColor: whiteColor,
            dividerColor: Colors.transparent,
            labelStyle: TextStyle(fontSize: 16),
            tabs: [
              Icon(
                Icons.camera_alt_outlined,
              ),
              Text('Chats'),
              Text('Statue'),
              Text('Calls'),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          HomeChatPage(),
          Text('status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
