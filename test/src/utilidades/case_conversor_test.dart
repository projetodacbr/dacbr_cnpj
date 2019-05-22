import 'package:dacbr_cnpj/src/utilidades/case_conversor.dart';
import 'package:test/test.dart';
import '../../helper.dart';

void main() {
  group('CaseConversor', () {
    describe('convert', () {
      when('case undefined', () {
        test('não modifica o texto', () {
          final text = "OiE";
          final conversor = CaseConversor(Case.undefined);
          final subject = conversor.convert(text);

          expect(subject, text);
        });
      });

      when('case lower', () {
        test('converte o texto para lowercase', () {
          final text = "OiE";
          final conversor = CaseConversor(Case.lower);
          final subject = conversor.convert(text);

          expect(subject, text.toLowerCase());
        });
      });

      when('case upper', () {
        test('converte o texto para uppercase', () {
          final text = "OiE";
          final conversor = CaseConversor(Case.upper);
          final subject = conversor.convert(text);

          expect(subject, text.toUpperCase());
        });
      });
    });
  });

  group('Case', () {
    final List<Case> subject = Case.values;

    describe('values', () {
      test('existe o case lower', () {
        expect(subject, contains(Case.lower));
      });

      test('existe o case upper', () {
        expect(subject, contains(Case.upper));
      });

      test('existe o case undefined', () {
        expect(subject, contains(Case.undefined));
      });
    });
  });
}
