import 'package:dacbr_cnpj/dacbr_cnpj.dart';
import 'dart:io';

main() async {
  print('Digite o CNPJ: ');
  String cnpjDigitado = stdin.readLineSync();

  try {
    final empresa = await DacbrCnpj.searchCNPJ(cnpjDigitado);

    print('CNPJ: ${empresa.cnpj}');
    print('Tipo: ${empresa.tipo}');
    print('Data de Abertura: ${empresa.abertura}');
    print('Nome Empresarial: ${empresa.nome}');
    print('Nome Fantasia: ${empresa.fantasia}');
    print('Porte: ${empresa.porte}');
    print('Atividade Principal: ${empresa.atividadePrincipal}');
    print('CANE Prinripal: ${empresa.CNAEPrincipal}');
    print('CANE Prinripal (Números): ${empresa.atividadePrincipalNumber}');

    empresa.atividadesSecundarias.forEach((atividade) =>
      print('Atividade Secundária: ${atividade.text}: CNAE ${atividade.code}')
    );

    print('Logradouro: ${empresa.logradouro}');
    print('Número: ${empresa.numero}');
    print('Complemento: ${empresa.complemento}');
    print('CEP: ${empresa.cep}');
    print('Bairro: ${empresa.bairro}');
    print('Municipio: ${empresa.municipio}');
    print('UF: ${empresa.uf}');
    print('E-mail (Endereço Eletrônico): ${empresa.email}');
    print('Telefone: ${empresa.telefone}');
    print('Ente Federativo Responsável (EFR): ${empresa.efr}');
    print('Situação: ${empresa.situacao}');
    print('Data da Situação: ${empresa.data_situacao}');
    print('Motivo da Situação: ${empresa.motivo_situacao}');
    print('Natureza Juridica: ${empresa.natureza_juridica}');
    print('Situação Especial: ${empresa.situacao_especial}');
    print('Data da Situação Especial: ${empresa.data_situacao_especial}');
    print('Ultima Atualização: ${empresa.ultima_atualizacao}');
    print('Capital Social: ${empresa.capital_social}');

    empresa.qsa.forEach((qsa) =>
      print('Sócio: ${qsa.nome}: Qualificação ${qsa.qual}')
    );

  } catch (error) {
    print("Acontenceu um erro ao comunicar com a api");
    print(error);
  }
}
