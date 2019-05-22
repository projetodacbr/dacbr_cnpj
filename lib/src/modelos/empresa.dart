import 'package:dacbr_cnpj/src/modelos/atividade.dart';
import 'package:dacbr_cnpj/src/modelos/qsa.dart';
import 'package:dacbr_cnpj/src/utilidades/case_conversor.dart';
import 'package:dacbr_cnpj/src/utilidades/mapper.dart';

class Empresa {
  Empresa.fromJson(Map<String, dynamic> json, { this.forceCase }) :
    _data_situacao = json['data_situacao'],
    _complemento = json['complemento'],
    _tipo = json['tipo'],
    _nome = json['nome'],
    _email = json['email'],
    _situacao = json['situacao'],
    _bairro = json['bairro'],
    _logradouro = json['logradouro'],
    _numero = json['numero'],
    _cep = json['cep'],
    _municipio = json['municipio'],
    _porte = json['porte'],
    _abertura = json['abertura'],
    _natureza_juridica = json['natureza_juridica'],
    _uf = json['uf'],
    _telefone = json['telefone'],
    _ultima_atualizacao = json['ultima_atualizacao'],
    _fantasia = json['fantasia'],
    _motivo_situacao = json['motivo_situacao'],
    _situacao_especial = json['situacao_especial'],
    _data_situacao_especial = json['data_situacao_especial'],
    _capital_social = double.tryParse(json['capital_social']) ?? 0,
    _cnpj = json['cnpj'],
    _efr = json['efr'],
    _atividadesPrincipal = Mapper.map(
      json['atividade_principal'] as List,
      using: (json) => Atividade.fromJson(json)
    ),
    atividadesSecundarias = Mapper.map(
      json['atividades_secundarias'] as List,
      using: (json) => Atividade.fromJson(json)
    ),
    qsa = Mapper.map(
      json['qsa'] as List,
      using: (json) => Qsa.fromJson(json)
    ),
    _conversor = CaseConversor(forceCase);

  final String _data_situacao;
  final String _complemento;
  final String _tipo;
  final String _nome;
  final String _email;
  final String _situacao;
  final String _bairro;
  final String _logradouro;
  final String _numero;
  final String _cep;
  final String _municipio;
  final String _porte;
  final String _abertura;
  final String _natureza_juridica;
  final String _uf;
  final String _telefone;
  final String _ultima_atualizacao;
  final String _fantasia;
  final String _motivo_situacao;
  final String _situacao_especial;
  final String _data_situacao_especial;
  final double _capital_social;
  final String _cnpj;
  final String _efr;
  final List<Atividade> _atividadesPrincipal;
  final List<Atividade> atividadesSecundarias;
  final List<Qsa> qsa;

  final Case forceCase;
  final CaseConversor _conversor;

  String get data_situacao => _data_situacao;
  String get complemento => _conversor.convert(_complemento);
  String get tipo => _conversor.convert(_tipo);
  String get nome => _conversor.convert(_nome);
  String get email => _conversor.convert(_email);
  String get situacao => _conversor.convert(_situacao);
  String get bairro => _conversor.convert(_bairro);
  String get logradouro => _conversor.convert(_logradouro);
  String get numero => _conversor.convert(_numero);
  String get cep => _cep;
  String get municipio => _conversor.convert(_municipio);
  String get porte => _conversor.convert(_porte);
  String get abertura => _conversor.convert(_abertura);
  String get natureza_juridica => _conversor.convert(_natureza_juridica);
  String get uf => _conversor.convert(_uf);
  String get telefone => _conversor.convert(_telefone);
  String get ultima_atualizacao => _conversor.convert(_ultima_atualizacao);
  String get fantasia => _conversor.convert(_fantasia);
  String get motivo_situacao => _conversor.convert(_motivo_situacao);
  String get situacao_especial => _conversor.convert(_situacao_especial);
  String get data_situacao_especial => _conversor.convert(_data_situacao_especial);
  double get capital_social => _capital_social;
  String get cnpj => _cnpj;
  String get efr => _conversor.convert(_efr);

  String get atividadePrincipal => _conversor.convert(
    _atividadesPrincipal.first.text
  );

  String get CNAEPrincipal => _atividadesPrincipal.first.code;

  int get atividadePrincipalNumber =>
    int.parse(CNAEPrincipal.replaceAll(RegExp(r"[^\d]"), ""));
}
