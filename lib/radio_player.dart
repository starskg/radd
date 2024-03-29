import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RadioAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio App'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('radio_stations')
            .doc('your_station_id')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final data = snapshot.data!.data();
          final radioName = data?['name'] ?? 'Default Radio Name';
          final streamUrl =
              data?['stream_url'] ?? 'https://default_stream_url.com';

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                radioName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Действие для кнопки воспроизведения
                },
                child: Text('Play'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Действие для кнопки остановки
                },
                child: Text('Stop'),
              ),
              SizedBox(height: 16),
              Text(
                'Stream URL: $streamUrl',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: 'Station 1'),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: 'Station 2'),
          // Добавьте другие вкладки для радиостанций
        ],
        // Добавьте обработчик для переключения вкладок
      ),
    );
  }
}
