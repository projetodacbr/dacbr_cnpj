import 'package:dacbr_cnpj/src/modelos/empresa.dart';
import 'package:test/test.dart';
import '../../facker/atividade.dart';
import '../../facker/empresa.dart';
import '../../facker/qsa.dart';
import '../../helper.dart';

void main() {
  group('Empresa', () {
    Empresa subject;

    describe('fromJson', () {
      when('recebe json valido', () {
        setUp(() {
          subject = Empresa.fromJson(kFakeEmpresaJson);
        });

        test('data situação é igual ao json informado', () {
          expect(subject.data_situacao, "03/11/2005");
        });

        test('complemento é igual ao json informado', () {
          expect(subject.complemento, "complemento");
        });

        test('tipo (matriz ou filial) é igual ao json informado', () {
          expect(subject.tipo, "MATRIZ");
        });

        test('nome é igual ao json informado', () {
          expect(subject.nome, 'GLOBO COMUNICACAO E PARTICIPACOES S/A');
        });

        test('email é igual ao json informado', () {
          expect(subject.email, isEmpty);
        });

        test('situacao é igual ao json informado', () {
          expect(subject.situacao, 'ATIVA');
        });

        test('bairro é igual ao json informado', () {
          expect(subject.bairro, 'JARDIM BOTANICO');
        });

        test('logradouro é igual ao json informado', () {
          expect(subject.logradouro, 'R LOPES QUINTAS');
        });

        test('numero é igual ao json informado', () {
          expect(subject.numero, '303');
        });

        test('cep é igual ao json informado', () {
          expect(subject.cep, '22.460-901');
        });

        test('municipio é igual ao json informado', () {
          expect(subject.municipio, 'RIO DE JANEIRO');
        });

        test('porte é igual ao json informado', () {
          expect(subject.porte, 'DEMAIS');
        });

        test('abertura é igual ao json informado', () {
          expect(subject.abertura, '31/01/1986');
        });

        test('natureza juridica é igual ao json informado', () {
          expect(
            subject.natureza_juridica,
            '205-4 - Sociedade Anônima Fechada'
          );
        });

        test('uf é igual ao json informado', () {
          expect(subject.uf, 'RJ');
        });

        test('telefone é igual ao json informado', () {
          expect(subject.telefone, '(21) 2540-2623');
        });

        test('ultima atualizacao é igual ao json informado', () {
          expect(subject.ultima_atualizacao, '2019-04-24T20:08:49.632Z');
        });

        test('fantasia é igual ao json informado', () {
          expect(
            subject.fantasia,
            'GCP,TV GLOBO, REDE GLOBO, GLOBO.COM, SOM LIVRE'
          );
        });

        test('motivo situacao é igual ao json informado', () {
          expect(subject.motivo_situacao, isEmpty);
        });

        test('situacao especial é igual ao json informado', () {
          expect(subject.situacao_especial, isEmpty);
        });

        test('data situação especial é igual ao json informado', () {
          expect(subject.data_situacao_especial, isEmpty);
        });

        test('capital social é igual ao json informado', () {
          expect(subject.capital_social, 6453568523.86);
        });

        test('cnpj é igual ao json informado', () {
          expect(subject.cnpj, "27.865.757/0001-02");
        });

        test('efr é igual ao json informado', () {
          expect(subject.efr, isEmpty);
        });

        test('atividade principal igual ao json informado', () {
          expect(subject.atividadePrincipal, "Atividades de televisão aberta");
        });

        test('atividade principal number igual ao json informado', () {
          expect(subject.atividadePrincipalNumber, 6021700);
        });

        test('CNAEPrincipal igual ao json informado', () {
          expect(subject.CNAEPrincipal, "60.21-7-00");
        });

        test('atividades secundarias igual ao json informado', () {
          expect(subject.atividadesSecundarias, kAtividadesSecundarias);
        });

        test('qsa igual ao json informado', () {
          expect(subject.qsa, kQsaEmpresa);
        });
      });
    });
  });
}
