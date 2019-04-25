import 'package:dacbr_cnpj/dacbr_cnpj.dart';
import 'package:dacbr_cnpj/src/utilidades/injector.dart';
import 'package:test/test.dart';
import '../facker/http_client.dart';
import '../helper.dart';

void main() {
  group('DacbrCnpj', () {
    describe('searchCNPJ', () {
      when('servidor responde corretamente', () {
        setUp(() {
          Injector.configure(client: fakeRequestEmpresa);
        });

        test('retorna um modelo da empresa', () async {
          final subject = await DacbrCnpj.searchCNPJ("27865757000102");
          expect(subject.nome, 'GLOBO COMUNICACAO E PARTICIPACOES S/A');
        });
      });

      when('servidor com problemas', () {
        setUp(() {
          Injector.configure(client: fakeRequestServerError);
        });

        test('a função retorna erro', () async {
          expect(
            DacbrCnpj.searchCNPJ("27865757000102"),
            throwsA(TypeMatcher<UnsupportedError>())
          );
        });
      });
    });
  });
}
