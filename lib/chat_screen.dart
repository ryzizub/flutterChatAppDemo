import 'package:chat_app/build_chat_message.dart';
import 'package:chat_app/build_message_input.dart';
import 'package:chat_app/chat_message.dart';
import 'package:chat_app/user.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 35.0,
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          'Bob',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            iconSize: 35.0,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        return BuildChatMessage(message: message, isMe: isMe);
                      })),
            ),
            BuildMessageInput(),
          ],
        ),
      ),
    );
  }
}
