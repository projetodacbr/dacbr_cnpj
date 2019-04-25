class Qsa {
  Qsa({this.qual, this.nome});

  Qsa.fromJson(Map<String, dynamic> json) :
    qual = json['qual'],
    nome = json['nome'];

  final String qual;
  final String nome;

  Map<String, dynamic> toJson() => {
    'qual': qual,
    'nome': nome
  };

  @override
  bool operator ==(other) =>
    other is Qsa &&
    other.qual == qual &&
    other.nome == nome;
}
