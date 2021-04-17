main() {
  print('Primeiro Programa');
  // dart é fortemente tipado
  int a = 1;
  double b = 2.3;
  bool estachovendo = true;
  bool estafrio = false;
  var c = 'Vc é legal';
  print(c is String);
  print(estachovendo);
  // lista aceita repetição
  var nomes = ['diogo', 'henrique', 'godoi'];
  nomes.add('novonome');
  print(nomes.length);
  print(nomes.elementAt(2));
  //set
  var conjunto = {0, 1, 2, 3, 4, 4, 4, 4};
  print(conjunto.length);
  // set com valores apenas inteiros
  Set<int> conjunto2 = {0, 1, 3, 2, 5, 5, 5, 5};

  //map
  Map<String, double> notasdosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8,
  };
  for (var chave in notasdosAlunos.keys) {
    print('chave = $chave');
  }
  for (var valor in notasdosAlunos.values) {
    print('chave = $valor');
  }
  for (var registro in notasdosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  // dynamic é uma variavel que armazenas varios tipos de variaveis
  dynamic x = 'Teste';
  print(x);
  x = 123;
  print(x);
  x = false;
  print(x);

  // criando constantes
  var ab = 3;
  print(ab);
  ab = 4;
  print(ab);

  final ba = 3;
  print(ba);
  // não pode mudar pois é constante ba = 4;
  print(ba);

  const cd = 5;
  //cd = 7;

  soma(2, 3);

  var p1 = Produto(nome: 'lapis', preco: 4.59);

  print("O produto ${p1.nome} tem preço ${p1.preco}");
}

soma(int a, int b) {
  print(a + b);
}

class Produto {
  String? nome;
  double preco;

  // construtor
  Produto({this.nome, this.preco = 0.0});
}
