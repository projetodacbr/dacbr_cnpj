class Atividade {
  Atividade({this.text, this.code});

  Atividade.fromJson(Map<String, dynamic> json) :
    text = json['text'],
    code = json['code'];

  final String code;
  final String text;

  Map<String, dynamic> toJson() => {
    "text": text,
    "code": code
  };


  @override
  bool operator ==(other) =>
    other is Atividade &&
    other.text == text &&
    other.code == code;
}
