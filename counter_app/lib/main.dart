import 'package:counter_app/app/view/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  //Fonksiyon kullanmıyorsun bu yüzden StatelessWidget
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
