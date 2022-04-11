// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class customizationScreen extends StatelessWidget {
  const customizationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading:  GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        toolbarHeight: 70,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 22,
            letterSpacing: 1.2,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints(
              maxWidth: double.infinity,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                      child: Icon(
                        Icons.lock_rounded,
                        color: Colors.teal[800],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Privacy And Security',
                      style: TextStyle(
                        fontFamily: 'Rancho',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_right_rounded,
                    size: 38,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints(
              maxWidth: double.infinity,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.extension,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Add-ons',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Container(child: Divider(height: 2,),width: MediaQuery.of(context).size.width * 0.80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.update,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Updates',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Container(child: Divider(height: 2,),width: MediaQuery.of(context).size.width * 0.80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.info,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height:20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints(
              maxWidth: double.infinity,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.build_circle,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Themes',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Container(child: Divider(height: 2,),width: MediaQuery.of(context).size.width * 0.80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.settings,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Universal',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Container(child: Divider(height: 2,),width: MediaQuery.of(context).size.width * 0.80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.home_rounded,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Home Screen',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Container(child: Divider(height: 2,),width: MediaQuery.of(context).size.width * 0.80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.chat_rounded,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Chat Screen',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Container(child: Divider(height: 2,),width: MediaQuery.of(context).size.width * 0.80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                          child: Icon(
                            Icons.widgets_rounded,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Widget',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints(
              maxWidth: double.infinity,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30,top: 15,bottom: 15),
                  child: Icon(
                    Icons.share,
                    color: Colors.teal[800],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Share TKWhatsApp Pro',
                  style: TextStyle(
                    fontFamily: 'Rancho',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
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