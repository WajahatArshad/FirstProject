import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat_model.dart';

class UserChats extends StatefulWidget {
  const UserChats({Key? key}) : super(key: key);

  @override
  State<UserChats> createState() => UserChatsState();
}

final List<ChatModel> chatData = [
  ChatModel(
    name: 'a',
    icon: 'a',
    isGroup: false,
    time: '10.00',
    currentMessage: 'What are you doing',
  ),
];
ChatModel? chatModel;

class UserChatsState extends State<UserChats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                ),
                title: Text(
                  chatData[index]['name'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Hello World',
                    ),
                  ],
                ),
                trailing: const Text(
                  '20.00',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 80,
                right: 20,
              ),
              child: Divider(),
            ),
          ],
        );
      },
    );
  }
}
