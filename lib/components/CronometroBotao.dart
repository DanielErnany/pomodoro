import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  final void Function()? click;

  CronometroBotao({
    required this.texto,
    required this.icone,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          textStyle: TextStyle()),
      onPressed: this.click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              this.icone,
              size: 35,
            ),
          ),
          Text(this.texto),
        ],
      ),
    );
  }
}
