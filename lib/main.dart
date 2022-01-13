import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/Pomodoro.dart';

import 'store/pomodoro.store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        title: 'Pomodoro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Pomodoro(),
      ),
    );
  }
}
