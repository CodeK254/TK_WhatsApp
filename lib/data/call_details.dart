// ignore_for_file: unused_import

import 'contact_chats.dart';

class Calls{
  dynamic name;
  dynamic timeCalled;
  dynamic callTaken;
  dynamic callOutgoing;
  dynamic callDuration;

  Calls({this.name,this.timeCalled,this.callTaken,this.callOutgoing,this.callDuration});
}

List<Calls> calls = [
  Calls(name: chats[0].name,timeCalled: '17:57',callTaken: true,callOutgoing: true,callDuration: '5 mins'),
  Calls(name: chats[1].name,timeCalled: '11:44',callTaken: false,callOutgoing: true,callDuration: '7 mins'),
  Calls(name: chats[2].name,timeCalled: '23:41',callTaken: true,callOutgoing: false,callDuration: '5 mins'),
  Calls(name: chats[3].name,timeCalled: '09:23',callTaken: true,callOutgoing: true,callDuration: '1 mins'),
  Calls(name: chats[4].name,timeCalled: '14:43',callTaken: true,callOutgoing: false,callDuration: '5 mins'),
  Calls(name: chats[5].name,timeCalled: '01:12',callTaken: false,callOutgoing: true,callDuration: '12 mins'),
  Calls(name: chats[6].name,timeCalled: '17:11',callTaken: true,callOutgoing: true,callDuration: '5 mins'),
  Calls(name: chats[7].name,timeCalled: '11:23',callTaken: false,callOutgoing: true,callDuration: '3 mins'),
  Calls(name: chats[8].name,timeCalled: '08:47',callTaken: true,callOutgoing: false,callDuration: '24 mins'),
  Calls(name: chats[9].name,timeCalled: '12:36',callTaken: true,callOutgoing: true,callDuration: '16 mins'),
  Calls(name: chats[10].name,timeCalled: '13:01',callTaken: true,callOutgoing: false,callDuration: '2 mins'),
  Calls(name: chats[11].name,timeCalled: '04:44',callTaken: false,callOutgoing: true,callDuration: '8 mins'),
];