import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  Respostas(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            // onSurface: Colors.red,
            shadowColor: Colors.black),
        onPressed: onSelection,
        child: Text(texto),
      ),
      // outras formas de invocar uma função
      // ElevatedButton(
      //     onPressed: () {
      //       print('Resposta 2 respondida');
      //     },
      //     child: Text('Resposta 2')),
      // ElevatedButton(
      //     onPressed: () => print('Resposta 3 respondida'),
      //     child: Text('Resposta 3')),
    );
  }
}
