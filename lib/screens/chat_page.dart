import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String boardName;

  // Constructor to receive boardName argument
  const ChatPage({Key? key, required this.boardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(boardName),
      ),
      body: Center(
        child: Text('Welcome to the $boardName chat'),
      ),
    );
  }
}
