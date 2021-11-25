import 'package:chatbotproj/models/chat_message.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class ChatMessageListItem extends StatelessWidget {
  final ChatMessage? chatMessage;

  ChatMessageListItem({this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return chatMessage!.type == ChatMessageType.sent
        ? _showSentMessage()
        : _showReceivedMessage();
  }

  Widget _showSentMessage({EdgeInsets? padding, TextAlign? textAlign}) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(64.0, 0.0, 8.0, 0.0),
      trailing: CircleAvatar(
        backgroundImage: AssetImage('assets/Diego.jpeg'),
      ),
      title: Text(chatMessage!.name, textAlign: TextAlign.right),
      subtitle: Text(chatMessage!.text, textAlign: TextAlign.right),
    );
  }

  Widget _showReceivedMessage() {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 64.0, 0.0),
      //leading: CircleAvatar(child: Text(chatMessage!.name.toUpperCase()[0])),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/Joey.jpeg'),
      ),
      title: Text(chatMessage!.name, textAlign: TextAlign.left),
      subtitle: Text(chatMessage!.text, textAlign: TextAlign.left),
      //trailing: Text(DateFormat('kk:mm dd-MM').format(DateTime.now()),
      // textAlign: TextAlign.left),
    );
  }
}
