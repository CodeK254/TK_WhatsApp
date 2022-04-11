// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void, sized_box_for_whitespace

import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mainSettings extends StatefulWidget {
  const mainSettings({ Key? key }) : super(key: key);

  @override
  _mainSettingsState createState() => _mainSettingsState();
}

class _mainSettingsState extends State<mainSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.teal,
        centerTitle: false,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8,2,8,2),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage('assets/tito.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Place Holder',
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Place holder 2',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: (){},
                    child: Icon(
                      Icons.qr_code_2,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 10,
            color: Colors.black38,
          ),
          Row(
            children: [
              Container(
                height: 65,
                width: 65,
                child: Center(
                  child: Icon(
                    FontAwesomeIcons.key,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),  
                  ),
                  Text(
                    'Privacy, security, change number',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Rancho',
                      fontSize: 18,
                      color: Colors.grey,
                    ),  
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 65,
                width: 65,
                child: Center(
                  child: Icon(
                    Icons.chat_bubble,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),  
                  ),
                  Text(
                    'Theme, wallpapers, chat history',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Rancho',
                      fontSize: 18,
                      color: Colors.grey,
                    ),  
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 65,
                width: 65,
                child: Center(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),  
                  ),
                  Text(
                    'Message, group & call tones',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Rancho',
                      fontSize: 18,
                      color: Colors.grey,
                    ),  
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 65,
                width: 65,
                child: Center(
                  child: Icon(
                    Icons.sd_storage_rounded,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Storage and data',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),  
                  ),
                  Text(
                    'Network usage, auto-download',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Rancho',
                      fontSize: 18,
                      color: Colors.grey,
                    ),  
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 65,
                width: 65,
                child: Center(
                  child: Icon(
                    Icons.help_outline,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),  
                  ),
                  Text(
                    'Help center, contact us, privacy policy',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Rancho',
                      fontSize: 18,
                      color: Colors.grey,
                    ),  
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.group_rounded,
                  color: Colors.teal[800],
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Invite a friend',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(
                      fontFamily: 'Rancho',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'FACEBOOK',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontFamily: 'PlatfairDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}