import 'package:flutter/material.dart';
import './question.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  });
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;
    return Column(
      children: [
        Question(perguntas[perguntaSelecionada]['texto']),
        // Os '...' jogam os valores da lista
        ...respostas.map((t) => Respostas(t, responder)).toList(),
      ],
    );
  }
}