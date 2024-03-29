import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'radio_player.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      home: RadioPlayer(streamUrl: 'https://your_radio_stream_url.com'),
    );
  }
}
