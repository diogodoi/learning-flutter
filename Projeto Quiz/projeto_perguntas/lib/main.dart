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

  void _responder() {
    setState(() {
      _perguntaselecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaselecionada < _perguntas.length;
  }

  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': ['Preto', 'Verde', 'Vermelho', 'Branco'],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual seu esporte favorito?',
      'respostas': ['Skate', 'Bicicleta', 'Futebol', 'Surfe'],
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
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
