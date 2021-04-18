import 'package:flutter/material.dart';

import './resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntaApp());
}
// widget StatelessWidget
// class PerguntaApp extends StatelessWidget {
//   void responder() {
//     print('Pergunta respondida');
//   }

//   @override
//   Widget build(BuildContext context) {
//     final perguntas = [
//       'Qual a sua cor favorita?',
//       'Qual seu animal favorito?',
//     ];

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Perguntas'),
//         ),
//         body: Column(
//           children: [
//             Text(perguntas[0]),
//             ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
//             ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
//             ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
//             // outras formas de invocar uma função
//             // ElevatedButton(
//             //     onPressed: () {
//             //       print('Resposta 2 respondida');
//             //     },
//             //     child: Text('Resposta 2')),
//             // ElevatedButton(
//             //     onPressed: () => print('Resposta 3 respondida'),
//             //     child: Text('Resposta 3')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// StatefulWidget

class _PerguntaAppState extends State<PerguntaApp> {
  // ao adiconar o _ na frente o componente se torna privado e só pode ser acessado no mesmo arquivo
  var _perguntaselecionada = 0;
  var _notaTotal = 0;

  void _responder(int nota) {
    setState(() {
      _perguntaselecionada++;
      _notaTotal += nota;
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaselecionada = 0;
      _notaTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaselecionada < _perguntas.length;
  }

  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 3},
        {'texto': 'Verde', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 1},
        {'texto': 'Branco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 1},
        {'texto': 'Cobra', 'nota': -1},
        {'texto': 'Elefante', 'nota': 4},
        {'texto': 'Leão', 'nota': 7},
      ],
    },
    {
      'texto': 'Qual seu esporte favorito?',
      'respostas': [
        {'texto': 'Skate', 'nota': 10},
        {'texto': 'Bicicleta', 'nota': 5},
        {'texto': 'Futebol', 'nota': 6},
        {'texto': 'Surfe', 'nota': 3},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // List<Widget> respostas = [];
    // Forma imperativa
    // for (var textResp in perguntas[_perguntaselecionada]['respostas']) {
    //   respostas.add(Respostas(textResp, _responder));
    // }
    // Forma declarativa usando map
    // List<String> respostas = temPerguntaSelecionada
    //     ? _perguntas[_perguntaselecionada]['respostas']
    //     : null;
    //  respostas.map((t) => Respostas(t, _responder)).toList();
    // Joguei para o questionario.dart

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaselecionada,
                responder: _responder)
            : Resultado(_notaTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
