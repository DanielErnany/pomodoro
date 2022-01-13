import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../components/CronometroBotao.dart';

import '../store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: store.estaTrabalhando() ? Colors.red : Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            store.estaTrabalhando() ? 'Hora de trabalhar' : 'Hora de descansar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            // O método padLeft/Rigth adiciona valores para completar o número de digitos desejados caso ele não tenha sido adquirido
            '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padRight(2, '0')}',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !store.iniciado
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CronometroBotao(
                          texto: 'Iniciar',
                          icone: Icons.play_arrow,
                          click: store.iniciar,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CronometroBotao(
                          texto: 'Parar',
                          icone: Icons.stop,
                          click: store.parar,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CronometroBotao(
                    texto: 'Reiniciar',
                    icone: Icons.refresh,
                    click: store.reiniciar,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
