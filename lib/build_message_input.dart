// ignore_for_file: prefer_const_constructors

import 'package:chat_app/chat_message.dart';
import 'package:chat_app/user.dart';
import 'package:flutter/material.dart';

class BuildMessageInput extends StatefulWidget {
  const BuildMessageInput({Key? key}) : super(key: key);

  @override
  _BuildMessageInputState createState() => _BuildMessageInputState();
}

class _BuildMessageInputState extends State<BuildMessageInput> {
  String dropdownValue = 'Current User';
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white70,
      child: Row(
        children: [
          DropdownButton<String>(
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            value: dropdownValue,
            alignment: Alignment.center,
            items: const [
              DropdownMenuItem(
                alignment: Alignment.center,
                child: Text('Current User'),
                value: 'Current User',
              ),
              DropdownMenuItem(
                alignment: Alignment.center,
                child: Text('Bob'),
                value: 'Bob',
              )
            ],
          ),
          Expanded(
              child: TextField(
            controller: textController,
            textInputAction: TextInputAction.send,
            onSubmitted: (String text) {
              submitMessage(text);
            },
            decoration: InputDecoration(
              hintText: 'Send a message...',
            ),
          )),
          IconButton(
            onPressed: () => submitMessage(textController.text),
            icon: Icon(Icons.send),
            iconSize: 30.0,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  void submitMessage(String value) {
    textController.clear();
    DateTime time = DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day, DateTime.now().hour, DateTime.now().minute);
    Message msg = Message(
      sender: dropdownValue == 'Current User' ? currentUser : bob,
      time: time,
      text: value,
    );
    messages.insert(0, msg);
  }
}
