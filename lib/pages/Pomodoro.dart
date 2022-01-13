import 'package:flutter/material.dart';
import 'package:pomodoro/components/EntradaTempo.dart';

class Pomodoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EntradaTempo(titulo: 'Trabalho', valor: 30),
              EntradaTempo(titulo: 'Descanso', valor: 30),
            ],
          ),
        ],
      ),
    );
  }
}
