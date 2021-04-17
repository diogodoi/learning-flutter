import 'package:flutter/material.dart';

// escreva st e escolha a opção
class Question extends StatelessWidget {
  final String texto;

  Question(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      //centraliza o texto observe que esta envolvido por um container
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
