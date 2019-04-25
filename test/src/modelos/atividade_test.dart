import 'package:dacbr_cnpj/src/modelos/atividade.dart';
import 'package:test/test.dart';
import '../../facker/atividade.dart';
import '../../helper.dart';

void main() {
  group('Atividade', () {
    final Atividade subject = Atividade.fromJson(kAtividadeJson);

    describe('fromJson', () {
      when('recebe json valido', () {
        test('text é igual a Atividade 1', () {
          expect(subject.text, 'Atividade 1');
        });

        test('code é igual a 10.99-6-99', () {
          expect(subject.code, '10.99-6-99');
        });
      });
    });

    describe('toJson', () {
      when('recebe json valido', () {
        test('retorna o map igual ao json', () {
          expect(subject.toJson(), kAtividadeJson);
        });
      });
    });
  });
}
