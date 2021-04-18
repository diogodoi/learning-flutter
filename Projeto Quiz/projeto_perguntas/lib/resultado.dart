import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() qreiniciarQuestionario;

  String get resultphrase {
    if (nota < 8) {
      return 'Parabéns!';
    } else if (nota < 12) {
      return 'Você é bom!';
    } else if (nota < 16) {
      return 'Impressionante !';
    } else {
      return 'Nível jedi!';
    }
  }

  Resultado(this.nota, this.qreiniciarQuestionario);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultphrase,
            style: TextStyle(fontSize: 40),
          ),
        ),
        TextButton(
          onPressed: qreiniciarQuestionario,
          child: Text('Reiniciar'),
          style: TextButton.styleFrom(
            minimumSize: Size(300, 50),
            backgroundColor: Colors.blue,
            primary: Colors.white,
          ),
        )
      ],
    );
  }
}
