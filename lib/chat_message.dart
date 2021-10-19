import 'package:chat_app/user.dart';

class Message {
  final User sender;
  final DateTime time;
  final String text;

  Message({
    required this.sender,
    required this.time,
    required this.text,
  });
}

List<Message> messages = [];
// List<Message> messages = [
//   Message(
//     sender: currentUser,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text:
//         'The Canary Islands, you wouldn\'t believe how hot the weather was over there.',
//   ),
//   Message(
//     sender: bob,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text: 'Anywhere exotic?',
//   ),
//   Message(
//     sender: bob,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text: 'That\'s awesome! Where did you go?',
//   ),
//   Message(
//     sender: currentUser,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text: 'Sure! I just got back from vacation. Good times',
//   ),
//   Message(
//     sender: bob,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text: 'How\'ve you been? Anything exciting happen lately?',
//   ),
//   Message(
//     sender: currentUser,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text: 'Hey Bob, what\'s up?',
//   ),
//   Message(
//     sender: bob,
//     time:
//         "${DateTime.now().hour.toString().padLeft(2, '0')}-${DateTime.now().minute.toString().padLeft(2, '0')}",
//     text: 'Hey man',
//   ),
// ];
