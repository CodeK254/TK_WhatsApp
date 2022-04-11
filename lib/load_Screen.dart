// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/whatsapp.png'),
      ),
    );
  }
}