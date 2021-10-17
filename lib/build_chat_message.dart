import 'package:chat_app/chat_message.dart';
import 'package:chat_app/user.dart';
import 'package:flutter/material.dart';

class BuildChatMessage extends StatefulWidget {
  final Message message;
  final bool isMe;
  const BuildChatMessage({Key? key, required this.isMe, required this.message})
      : super(key: key);

  @override
  _BuildChatMessageState createState() => _BuildChatMessageState();
}

class _BuildChatMessageState extends State<BuildChatMessage> {
  @override
  Widget build(BuildContext context) {
    final Container msg = Container(
      margin: widget.isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0, right: 5.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, left: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: widget.isMe ? Theme.of(context).primaryColor : Colors.grey[400],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.message.time,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            widget.message.text,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    if (widget.isMe) return msg;
    return Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage(bob.imageURL),
        ),
        msg,
      ],
    );
  }
}
