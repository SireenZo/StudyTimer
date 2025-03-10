import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_timer/pomodoroscreen.dart';
import 'package:study_timer/timerservice.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TimerService>(create:(_) =>TimerService(),
    child:MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PomodoroScreen());
  }
}
