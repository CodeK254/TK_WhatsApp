// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_element, unused_local_variable, camel_case_types

import 'package:flutter/material.dart';
import 'package:tk_whatsapp/data/contact_chats.dart';
import 'package:tk_whatsapp/data/users.dart';

class ChatScreen extends StatefulWidget {

  final Chats user;
  final Users data;

  ChatScreen({required this.user,required this.data});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _chatBubble( Chats message, bool isMe, bool isUserSame ){
    if( isMe ){
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(widget.user.last_text),
            ),
          ),
          !isUserSame ?
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.user.last_text_tym,style: TextStyle(fontSize: 10),),
              SizedBox(width: 8,),
              Padding(
                padding: const EdgeInsets.only(right:8),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:AssetImage('assets/tito.png'),
                ),
              ),
            ],
          )
          :
          Container(),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
                color: Colors.teal[350],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(widget.user.last_text),
            ),
          ),
          !isUserSame ?
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:AssetImage(widget.user.imageUrl),
                ),
              ),
              SizedBox(width: 8,),
              Text(widget.user.last_text_tym,style: TextStyle(fontSize: 10),),
            ],
          )
          :
          Container(),
        ],
      );
    }
  }

  _messageInput(){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.78,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.5,
                  color: Colors.grey,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 50,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.teal[800]
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Send a message...'),
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
                GestureDetector(
                  onTap: (){}, 
                  child: Icon(
                    Icons.attach_file_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 5,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){}, 
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FloatingActionButton(onPressed: (){},backgroundColor: Colors.teal,child: Icon(Icons.mic_rounded,color: Colors.black,),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Users prevUser = currentUser;
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        leading:  GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.video_call,color: Colors.white,size: 28,),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.phone,color: Colors.white,size: 25,),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert,color: Colors.white),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(height: 28,child: Text('View contact'),value: 0,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Media, links and docs'),value: 1,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Search'),value: 2,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Mute notifications'),value: 3,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Wallpaper'),value: 4,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('More'),
                    Icon(Icons.arrow_right,color: Colors.teal[800],),
                  ],
                ),value: 5,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Voice Changer'),value: 6,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Go to first message'),value: 7,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Search Web'),value: 8,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Clear Recent Emojis'),value: 9,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Lock Conversation'),value: 10,),
            ],
          ),
        ],
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(text: widget.user.name,
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
              TextSpan(text: '\n\n'),
              widget.user.online ?
              TextSpan(text: 'Online',style: TextStyle(fontSize: 8,color: Colors.lightGreenAccent[400]))
              :
              TextSpan(text:widget.user.last_text_tym,style: TextStyle(fontSize: 8,color: Colors.white38)),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(20),
                itemCount: chats.length,
                itemBuilder: (BuildContext context,int index){
                final Chats message =  chats[index];
                final bool isMe = message.sender == currentUser;
                  widget.user.last_text = message.last_text;
                  widget.user.last_text_tym = message.last_text_tym;

                  bool isUserSame = prevUser == message.sender;
                  prevUser = message.sender;

                  return _chatBubble(message, isMe, isUserSame); 
              }
            ),
          ),
          _messageInput(),
        ],
      ),
    );
  }
}