import 'package:flutter/cupertino.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:CupertinoColors.white,
      child: Center(
        child: Text("Chat",style: TextStyle(fontSize: 60),),
      ),
    );
  }
}
