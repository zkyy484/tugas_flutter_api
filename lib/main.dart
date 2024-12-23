import 'package:flutter/material.dart';
import 'package:tugas_api_flutter/screen/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dzaky',
      home: DaftarList(),
    );
  }
}