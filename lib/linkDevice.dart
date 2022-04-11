// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class linkDevices extends StatefulWidget {
  const linkDevices({ Key? key }) : super(key: key);

  @override
  _linkDevicesState createState() => _linkDevicesState();
}

class _linkDevicesState extends State<linkDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        title: Text(
          'Linked devices',
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 20,
            fontStyle: FontStyle.normal,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.4,
              maxWidth: double.infinity,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image(image: AssetImage('assets/linkDevices.jpeg'),height: 180,width: double.infinity,),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Use WhatsApp on other devices',
                      style: TextStyle(
                        fontFamily: 'Rancho',
                        fontSize: 22,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.05,
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal, // Background color
                      ),
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          builder: (context){
                            return Container(
                              constraints: BoxConstraints(
                                maxHeight: MediaQuery.of(context).size.height * 0.35,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,25,0,10),
                                    child: Text(
                                      'Unlock to link a device',
                                      style: TextStyle(
                                        fontFamily: 'PlayfairDisplay',
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.black,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.fingerprint_rounded,
                                      color: Colors.teal[800],
                                      size: 60,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Touch the fingerprint sensor',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.grey[500],
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'USE PASSWORD',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.green[700],
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        );
                      }, 
                      child: Center(
                        child: Text(
                          'Link a device',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(0),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.1,
              maxWidth: double.infinity,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,top: 10,left: 10),
                  child: Icon(
                    Icons.settings_cell_rounded,
                    color: Colors.teal[800],
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10,left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Multi-device beta',
                        style: TextStyle(
                          fontFamily: 'Rancho',
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Text(
                          'Use up to 4 devices without keeping your phone online. Tap to learn more.',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}