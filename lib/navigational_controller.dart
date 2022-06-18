import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';

class NavigationalController extends StatefulWidget {
  const NavigationalController({Key? key}) : super(key: key);

  @override
  State<NavigationalController> createState() => _NavigationalControllerState();
}

TabController? _controller;

class _NavigationalControllerState extends State<NavigationalController>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabBarItemList = [
    const Tab(
      icon: Icon(
        Icons.camera_alt,
      ),
    ),
    const Tab(
      text: 'CHATS',
    ),
    const Tab(
      text: 'STATUS',
    ),
    const Tab(
      text: 'CALLS',
    ),
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Whats App',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: 'New Group',
                child: Text(
                  'New Group',
                ),
              ),
              const PopupMenuItem(
                value: 'New Broadcast',
                child: Text(
                  'New Broadcast',
                ),
              ),
              const PopupMenuItem(
                value: 'Whatsapp Web',
                child: Text(
                  'Whatsapp Web',
                ),
              ),
              const PopupMenuItem(
                value: 'Starred Messages',
                child: Text(
                  'Starred Messages',
                ),
              ),
              const PopupMenuItem(
                value: 'Settings',
                child: Text(
                  'Settings',
                ),
              ),
            ];
          }),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: tabBarItemList,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text(
            'Camera',
          ),
          ChatScreen(),
          Text(
            'Status',
          ),
          Text(
            'Calls',
          ),
        ],
      ),
    );
  }
}
