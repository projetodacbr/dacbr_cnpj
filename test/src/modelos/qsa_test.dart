import 'package:dacbr_cnpj/src/modelos/qsa.dart';
import 'package:test/test.dart';
import '../../facker/qsa.dart';
import '../../helper.dart';

void main() {
  group('Qsa', () {
    final Qsa subject = Qsa.fromJson(kQsaJson);

    describe('fromJson', () {
      when('recebe json valido', () {
        test('nome é igual a Qsa 1', () {
          expect(subject.nome, 'Qsa 1');
        });

        test('qual é igual a 37-Sócio Pessoal Jurídica', () {
          expect(subject.qual, '37-Sócio Pessoal Jurídica');
        });
      });
    });

    describe('toJson', () {
      when('recebe json valido', () {
        test('retorna o map igual ao json', () {
          expect(subject.toJson(), kQsaJson);
        });
      });
    });
  });
}
