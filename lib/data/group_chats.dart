// ignore_for_file: non_constant_identifier_names

class Groups{
  dynamic grup_name;
  dynamic last_text;
  dynamic last_text_sender;
  dynamic last_text_sender_number;
  dynamic last_text_sender_saved;
  dynamic last_text_time_sent;
  dynamic read;
  dynamic imageUrl;

  Groups({this.grup_name,this.last_text,this.last_text_sender_saved,this.last_text_sender,this.last_text_sender_number,this.last_text_time_sent,this.imageUrl,this.read});
}

List<Groups> groups = [
  Groups(grup_name: 'P101 Comp-Science', last_text: 'Hakuna daro leo adi...', last_text_sender_saved: true,last_text_sender: 'Wagido', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '19:58',imageUrl: 'p101.jpg',read: true),
  Groups(grup_name: 'Kasarani Big Brothers', last_text: 'Tugongane Sato jioni, hii wiki siko area.', last_text_sender_saved: false,last_text_sender: 'Kinyambi', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '16:47',imageUrl: 'kasarani.jpg',read: false),
  Groups(grup_name: 'Nairobi Crime Free', last_text: 'REform or be deformed.', last_text_sender_saved: false,last_text_sender: 'Kiando', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '01:45',imageUrl: 'nairobi.jpg',read: false),
  Groups(grup_name: 'KarU comrades', last_text: 'You Left', last_text_sender_saved: true,last_text_sender: '', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '07:11',imageUrl: 'karu.jpg',read: true),
  Groups(grup_name: 'Casanova Society', last_text: 'Walimzimanga adi.', last_text_sender_saved: false,last_text_sender: 'Kinoti', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '14:09',imageUrl: 'casanova.jpg',read: false),
  Groups(grup_name: 'September Bon-fire', last_text: 'Itakua 23 - 24, not confirmed..!!', last_text_sender_saved: true,last_text_sender: 'Allison', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '19:37',imageUrl: 'september.jpg',read: true),
  Groups(grup_name: 'Com 210', last_text: 'Cat ni kesho.', last_text_sender_saved: true,last_text_sender: 'Denno', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '12:09',imageUrl: 'com210.jpg',read: false),
  Groups(grup_name: 'Com 211_Data_Structures', last_text: 'Nlifanya presentations wamwisho bana', last_text_sender_saved: false,last_text_sender: 'Omollo', last_text_sender_number: '+2547 65 394783',last_text_time_sent: '23:47',imageUrl: 'com211.jpg',read: true),
];