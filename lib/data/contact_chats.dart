// ignore_for_file: non_constant_identifier_names

import 'package:tk_whatsapp/data/users.dart';
class Chats{
  dynamic name;
  dynamic number;
  dynamic last_text;
  dynamic sender;
  dynamic online;
  dynamic status;
  dynamic status_number;
  dynamic last_satus_time;
  dynamic imageUrl;
  dynamic last_text_tym;
  dynamic read;
  dynamic callOrCalled;

  Chats({this.name,this.number,this.sender,this.last_satus_time,this.last_text,this.online,this.status,this.status_number,this.imageUrl,this.last_text_tym,this.read,this.callOrCalled});
}
//  LIST AS IN HOME SCREEN.
List<Chats> chats = [
  Chats(callOrCalled: true,name: "Titoh",number: '+2547 42 143102',last_text: 'Ayeeeh! Uko wapi?',sender: currentUser,online: true,read:true,status: true,status_number: 5,last_satus_time: '05:44',imageUrl: 'assets/tito.png',last_text_tym: '14:14'),
  Chats(callOrCalled: true,name: "Dave_",number: '+2547 47 437434',last_text: 'Tunapanda saa ngapi..?',sender: dave,online: true,read:false,status: true,status_number: 6,last_satus_time: '17:56',imageUrl: 'assets/dave.jpg',last_text_tym: '16:47'),
  Chats(callOrCalled: false,name: "Ivie Shee",number: '+2547 23 384747',last_text: 'Uliza kiatu...hahaha!!!',sender: currentUser,online: false,read:true,status: false,status_number: 3,last_satus_time: '11:10',imageUrl: 'assets/ivie.jpg',last_text_tym: '10:01'),
  Chats(callOrCalled: true,name: "Tiara",number: '+2547 99 478243',last_text: 'Come we stay, huh!',sender: tiara,online: true,read:true,status: true,status_number: 1,last_satus_time: '00:16',imageUrl: 'assets/tiara.jpg',last_text_tym: '23:14'),
  Chats(callOrCalled: false,name: "Allison",number: '+2547 22 244734',last_text: 'Sure.Bytha you wrote all them code yoself right?',sender: allison,online: false,read:false,status: false,status_number: 6,last_satus_time: '23:15',imageUrl: 'assets/allison.jpg',last_text_tym: '09:54'),
  Chats(callOrCalled: false,name: "Wagido",number: '+2547 96 384683',last_text: 'Alafu ulituma zile stuff...',sender: currentUser,online: false,read:false,status: false,status_number: 2,last_satus_time: '09:47',imageUrl: 'assets/wagido.jpg',last_text_tym: '12:11'),
  Chats(callOrCalled: true,name: "Mum",number: '+2547 23 426743',last_text: 'Zmefika?',sender: mum,online: true,status: true,read:false,status_number: 9,last_satus_time: '16:31',imageUrl: 'mum.jpg',last_text_tym: '19:46'),
  Chats(callOrCalled: false,name: "Luka",number: '+2547 42 985733',last_text: 'Ulimaliza installation?',sender: currentUser,online: true,read:true,status: true,status_number: 6,last_satus_time: '20:17',imageUrl: 'assets/luka.jpeg',last_text_tym: '17:10'),
  Chats(callOrCalled: true,name: "Siz_Wambo",number: '+2547 23 989743',last_text: 'Mambo katoto ka mum.',sender: sizwambo,online: false,read:true,status: false,status_number: 7,last_satus_time: '15:07',imageUrl: 'assets/sizwambo.jpg',last_text_tym: '23:32'),
  Chats(callOrCalled: true,name: "Eliza",number: '+2547 56 494838',last_text: 'Sure.Actually I was planning to take tou out on Valentines.Its alot to ask for buh please consider it.',sender: currentUser,online: true,read:false,status: true,status_number: 2,last_satus_time: '10:11',imageUrl: 'assets/eliza.jpg',last_text_tym: '01:12'),
  Chats(callOrCalled: true,name: "Tony",number: '+2547 45 387237',last_text: 'Where U @?',sender: currentUser,online: true,read:true,status: true,status_number: 10,last_satus_time: '22:12',imageUrl: 'assets/tony.jpg',last_text_tym: '15:59'),
  Chats(callOrCalled: true,name: "Denno",number: '+2547 21 434974',last_text: 'Unkama ivi lini?',sender: denno,online: false,read:true,status: false,status_number: 3,last_satus_time: '16:14',imageUrl: 'assets/denno.jpg',last_text_tym: '11:00'),
];

//  LIST AS IN MESSAGE (CHAT) SCREEN.
List<Chats> message = [
  Chats(name: "Titoh",number: '+2547 42 143102',last_text: 'Ayeeeh! Uko wapi?',online: true,read:true),
  Chats(name: "Dave_",number: '+2547 47 437434',last_text: 'Tunapanda saa ngapi..?',online: true,read:false),
  Chats(name: "Ivie Shee",number: '+2547 23 384747',last_text: 'Uliza kiatu...hahaha!!!',online: true,read:true),
  Chats(name: "Tiara",number: '+2547 99 478243',last_text: 'Come we stay, huh!',online: true,read:true),
  Chats(name: "Allison",number: '+2547 22 244734',last_text: 'I wanna come visit.',online: true,read:false),
  Chats(name: "Wagido",number: '+2547 96 384683',last_text: 'Fagia yote gathee.',online: true,read:false),
  Chats(name: "Mum",number: '+2547 23 426743',last_text: 'Zmefika?',online: true,status: true,read:false),
  Chats(name: "Luka",number: '+2547 42 985733',last_text: 'Ulimaliza installation?',online: true,read:true),
  Chats(name: "Siz_Wambo",number: '+2547 23 989743',last_text: 'Mambo katoto ka mum.',online: true,read:true),
  Chats(name: "Eliza",number: '+2547 56 494838',last_text: 'Anasema hadai msee sai.',online: true,read:false),
  Chats(name: "Tony",number: '+2547 45 387237',last_text: 'Where U @?',online: true,read:true),
  Chats(name: "Denno",number: '+2547 21 434974',last_text: 'Unkama ivi lini?',online: true,read:true),
];