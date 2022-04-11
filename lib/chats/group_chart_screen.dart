// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tk_whatsapp/data/group_chats.dart';

class GroupChatScreen extends StatefulWidget {
  const GroupChatScreen({ Key? key }) : super(key: key);

  @override
  _GroupChatScreenState createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Group Name',
        ),
      ),
    );
  }
}