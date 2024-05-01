import 'package:counter_app/app/view/app.dart';
import 'package:flutter/material.dart';

void main () => runApp(const CounterApp());

class CounterApp extends StatelessWidget { //Fonksiyon kullanmıyorsun bu yüzden StatelessWidget
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:HomeView(),
    );
  }
}