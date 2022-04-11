// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors, unused_import, override_on_non_overriding_member
import'package:flutter/material.dart';
import 'package:tk_whatsapp/chats/chats_screen.dart';
import 'package:tk_whatsapp/data/contact_chats.dart';
import 'package:tk_whatsapp/data/group_chats.dart';
import 'package:tk_whatsapp/data/users.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController? controller = TextEditingController();
  late String filter;

  @override
  void initstate(){
    super.initState();
    controller!.addListener((){
      filter = controller!.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(30)),
          child: TextField(
            controller: controller,
            // onChanged: (value){
            //   chats = chats
            //   .where((element) => element.contains(value))
            //   .toList();
            // },
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Search . . .',
              hintStyle: TextStyle(
                fontFamily: 'Rancho',
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: EdgeInsets.only(top: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ChatScreen(
                    user: chats[index], 
                    data: currentUser,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.08,
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: ListTile(
                  hoverColor: Colors.grey[400],
                  selectedTileColor: Colors.grey,
                  leading: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black,
                    child: GestureDetector(
                      child: Icon(Icons.person_rounded),
                    ),
                  ),
                  trailing: Text(
                    '${chats[index].last_text_tym}',
                    style: TextStyle(
                      color: Colors.red[200],
                      fontFamily: 'Rancho',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${chats[index].name}',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rancho',
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '${chats[index].last_text}',
                        style: TextStyle(
                          fontFamily: 'Rancho',
                          fontWeight: FontWeight.normal,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}