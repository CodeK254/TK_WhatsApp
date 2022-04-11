// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, avoid_web_libraries_in_flutter, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, unnecessary_this, prefer_void_to_null, unused_local_variable, non_constant_identifier_names, unused_element, use_key_in_widget_constructors, must_be_immutable, sized_box_for_whitespace

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tk_whatsapp/data/contact_chats.dart';
import 'package:tk_whatsapp/data/group_chats.dart';
import 'package:tk_whatsapp/data/users.dart';
import 'package:tk_whatsapp/load_Screen.dart';
import 'package:tk_whatsapp/search_page.dart';
import 'package:tk_whatsapp/settings/cumstomization.dart';
import 'package:tk_whatsapp/settings/mainsettings.dart';
import 'chats/chats_screen.dart';
import 'chats/group_chart_screen.dart';
import 'package:tk_whatsapp/data/call_details.dart';
import 'package:tk_whatsapp/linkDevice.dart';


void main() => runApp(MaterialApp(
  // theme: ThemeData(
  //   primarySwatch: Colors.grey,
  // ),
  initialRoute: '/',
  routes: {
    '/': (context)=> Homepage(),
    '/search': (context) => SearchScreen(),
  },
));
class Homepage extends StatefulWidget {
  int num = 0;

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // File savedImage; 
  final isDailOpen = ValueNotifier(false);

  void onSelected (BuildContext context,int item){
    switch(item){
      case 10:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => mainSettings()),
        );
        break;
      case 8:
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => linkDevices()),
        );
        break;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width);
    double useWidth = width / 5;
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text(
            'TK_WhatsApp',
            style: TextStyle(
              fontFamily: 'Rancho',
              fontWeight: FontWeight.normal,
              fontSize: 28,
              color: Colors.white,
            ),  
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 28.0),
              child: GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    builder: (context){
                      return Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.3,
                        ),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(8),
                          //   topRight: Radius.circular(8),
                          // ),
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8,8,0,0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Airplane Mode',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Rancho',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              color: Colors.black,
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.80,
                              ),
                              child: Text(
                                'While Airplane mode is On, you will not be able to send / receive messages.',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Rancho',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                            SizedBox(height: 35),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[900], // Background color
                                  ),
                                  onPressed: (){}, 
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Rancho',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[200],
                                        letterSpacing: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[900], // Background color
                                  ),
                                  onPressed: (){}, 
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Activate',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Rancho',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[200],
                                        letterSpacing: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  );
                },
                child: Icon(
                  Icons.airplanemode_off,
                  color: Colors.white,
                  size: 26.0,
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    builder: (context){
                      return Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8,8,0,0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Theme',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Rancho',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dark',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Rancho',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.nights_stay_rounded,
                                  color: Colors.white,
                                  size: 75,
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[900], // Background color
                                  ),
                                  onPressed: (){}, 
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Rancho',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[200],
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[900], // Background color
                                  ),
                                  onPressed: (){}, 
                                  child: Text(
                                    'Activate',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Rancho',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[200],
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  );
                },
                child: Icon(
                  Icons.bedtime_rounded,
                  color: Colors.white,
                  size: 26.0,
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
              )
            ),
            PopupMenuButton<dynamic>(

              onSelected: (item) => onSelected(context, item),

              icon: Icon(Icons.more_vert,color: Colors.white),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(height: 28,child: Text('TKMods'),value: 0,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Message Scheduler'),value: 1,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Auto Reply'),value: 2,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Restart TKWhatsapp'),value: 3,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Message a number'),value: 4,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Mass Message Sender'),value: 5,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('New group'),value: 6,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('New broadcast'),value: 7,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Linked devices'),value: 8,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Starred messages'),value: 9,),
                PopupMenuDivider(),
                PopupMenuItem(height: 28,child: Text('Settings'),value: 10,),
              ],
            ),
          ],
          backgroundColor: Colors.teal,
          bottom:  TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                icon: Icon(Icons.group_outlined),
                text: 'Groups',  
              ),
              Tab(
                icon: Icon(Icons.group_outlined),
                text: 'Groups',  
              ),
              Tab(
                icon: Icon(Icons.image_outlined),
                text: 'Status',  
              ),
              Tab(
                icon: Icon(Icons.call_rounded),
                text: 'Calls',  
              ),
            ],
          ),
          foregroundColor: Colors.green,
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: Colors.black,
              body: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.black38,
                      child: Column(
                        children: [
                          Text('Camera',
                            style: TextStyle(
                              fontFamily: 'Rancho',
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          IconButton(
                            onPressed: () {}, // async => await _pickImageFromCamera(), 
                            icon: Icon(Icons.camera_alt_rounded,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black38,
                      child: Column(
                        children: [
                          Text('Choose Photo',
                            style: TextStyle(
                              fontFamily: 'Rancho',
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          IconButton(
                            onPressed: () {},// async => await _pickImageFromGallery(), 
                            icon: Icon(Icons.image_search_rounded,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            WillPopScope(
              onWillPop: () async {
                 if(isDailOpen.value){
                   isDailOpen.value = false;

                   return false;
                 }
                 else{
                   return true;
                 }
              },
              child: Scaffold(
                body: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context,int index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => ChatScreen(
                            user: chats[index],
                            data: currentUser,
                          )),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Row(
                              children: [
                                chats[index].read ?
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.blue,
                                    ),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:AssetImage(chats[index].imageUrl),
                                  ),
                                )
                                :
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:AssetImage(chats[index].imageUrl),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.75,
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '${chats[index].name}',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Rancho',
                                                  fontWeight: FontWeight.normal,
                                                  letterSpacing: 1.5,
                                                ),
                                              ),
                                              chats[index].online ?
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                width: 7,
                                                height: 7,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.lightGreenAccent[400],
                                                ),
                                              )
                                              :
                                              SizedBox(),
                                            ],
                                          ),
                                          Text(
                                            '${chats[index].last_text_tym}',
                                            style: TextStyle(
                                              color: Colors.teal[800],
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '${chats[index].last_text}',
                                        style: TextStyle(
                                          fontFamily: 'Rancho',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey[400],
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                ),
                floatingActionButton: SpeedDial(
                  icon: Icons.add_rounded,
                  overlayColor: Colors.grey,
                  overlayOpacity: 0.2,
                  backgroundColor: Colors.teal,
                  closeManually: true,
                  openCloseDial: isDailOpen,
                  spaceBetweenChildren: 12,
                  spacing: 12,
                  children: [
                    SpeedDialChild(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> customizationScreen())
                        );
                      },
                      backgroundColor: Colors.teal,
                      child: Icon(FontAwesomeIcons.paintRoller,color: Colors.white,size: 20,),
                      label: 'Customize',
                    ),
                    SpeedDialChild(
                      onTap: (){},
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.document_scanner_rounded,
                        color: Colors.white,
                      ),
                      label: 'Data',
                    ),
                    SpeedDialChild(
                      onTap: (){},
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      label: 'Freeze',
                    ),
                    SpeedDialChild(
                      onTap: (){},
                      backgroundColor: Colors.teal,
                      child: Icon(
                        FontAwesomeIcons.envelopeOpenText,
                        color: Colors.white,
                      ),
                      label: 'Message',
                    ),
                  ],
                ),
              ),
            ),
            WillPopScope(
              onWillPop: () async {
                if(isDailOpen.value){
                   isDailOpen.value = false;

                   return false;
                 }
                 else{
                   return true;
                 }
              },
              child: Scaffold(
                body: ListView.builder(
                  itemCount: groups.length,
                  itemBuilder: (BuildContext context,int index){
                    return GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> GroupChatScreen())),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Row(
                              children: [
                                groups[index].read ?
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.blue,
                                    ),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:AssetImage(groups[index].imageUrl),
                                  ),
                                )
                                :
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:AssetImage(groups[index].imageUrl),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.75,
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '${groups[index].grup_name}',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Rancho',
                                              fontWeight: FontWeight.normal,
                                              letterSpacing: 1.5,
                                            ),
                                          ),
                                          groups[index].read ?
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.lightGreenAccent[400],
                                            ),
                                          )
                                          :
                                          SizedBox(),
                                        ],
                                      ),
                                      Text(
                                        '${groups[index].last_text_time_sent}',
                                        style: TextStyle(
                                          color: Colors.teal[800],
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${groups[index].last_text}',
                                      style: TextStyle(
                                      fontFamily: 'Rancho',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[400],
                                      letterSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                ),
                floatingActionButton: SpeedDial(
                  icon: Icons.add_rounded,
                  overlayColor: Colors.grey,
                  overlayOpacity: 0.2,
                  backgroundColor: Colors.teal,
                  closeManually: true,
                  openCloseDial: isDailOpen,
                  spaceBetweenChildren: 12,
                  spacing: 12,
                  children: [
                    SpeedDialChild(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> customizationScreen())
                        );
                      },
                      backgroundColor: Colors.teal,
                      child: Icon(FontAwesomeIcons.paintRoller,color: Colors.white,size: 20,),
                      label: 'Customize',
                    ),
                    SpeedDialChild(
                      onTap: (){},
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.document_scanner_rounded,
                        color: Colors.white,
                      ),
                      label: 'Data',
                    ),
                    SpeedDialChild(
                      onTap: (){},
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      label: 'Freeze',
                    ),
                    SpeedDialChild(
                      onTap: (){},
                      backgroundColor: Colors.teal,
                      child: Icon(
                        FontAwesomeIcons.envelopeOpenText,
                        color: Colors.white,
                      ),
                      label: 'Message',
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.grey[200],
              body: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context,int index){
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,2,10,2),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.lightBlue[100],
                          child: Center(
                            child: Text(
                              '${chats[index].status_number}',
                              style: TextStyle(
                                fontFamily: 'Praise',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${chats[index].name}',
                            style: TextStyle(
                              fontFamily: 'Rancho',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: 1.5,
                            ),
                          ),
                          Text(
                            '${chats[index].last_satus_time}',
                            style: TextStyle(
                              fontFamily: 'Rancho',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              ),
            ),
            Scaffold(
              body: callDetails(),
            ),
          ],
        ),
      ),
    );
  }
  // Future<Null> _pickImageFromCamera() async {
  //   final ImagePicker _picker = ImagePicker();
  //   // Pick an image
  //   final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    
  // }
  // Future<Null> _pickImageFromGallery() async {
  //   final ImagePicker _picker = ImagePicker();
  //   // Pick an image
  //   final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
    
  // }
  void full_group_pic(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'Full-Group-Pic',
              child: Container(
                color: Colors.lightGreen,
                width: double.infinity,
                height: 300,
                child: Icon(
                  Icons.group_outlined,
                  color: Colors.grey,
                  size: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

    void full_person_pic(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'Full-Person-Pic',
              child: Container(
                color: Colors.lightGreen,
                child: Icon(
                  Icons.group_rounded,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class callDetails extends StatefulWidget {
  const callDetails({ Key? key }) : super(key: key);

  @override
  _callDetailsState createState() => _callDetailsState();
}

class _callDetailsState extends State<callDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context,int index){
          return GestureDetector(
            onTap: (){},
            child: Row(
              children: [
                chats[index].callOrCalled == true ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.teal[100],
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${calls[index].name}',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 15,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Row(
                          children: [
                            if(calls[index].callOutgoing == true && calls[index].callTaken == false)
                              Icon(Icons.call_missed_outgoing_rounded,color: Colors.red,size: 20,),
                            if(calls[index].callOutgoing == true && calls[index].callTaken == true)
                              Icon(Icons.call_made_rounded,color: Colors.green,size: 20,),
                            if(calls[index].callOutgoing == false && calls[index].callTaken == false)
                              Icon(Icons.call_missed_rounded,color: Colors.red,size: 20,),
                            if(calls[index].callOutgoing == false && calls[index].callTaken == true)
                              Icon(Icons.call_received_rounded,color: Colors.green,size: 20,),
                            SizedBox(width: 10,),
                            Text(
                              '${calls[index].timeCalled}',
                              style: TextStyle(
                                fontFamily: 'Rancho',
                                fontSize: 12,
                                letterSpacing: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width:20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){},
                        child: Icon(
                          Icons.call_rounded,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                )
                :
                Container(),
              ],
            ),
          );
        }
      ),
    );
  }
}