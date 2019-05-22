import 'package:dacbr_cnpj/src/utilidades/const.dart';
import 'package:test/test.dart';
import '../../helper.dart';

void main() {
  group('Const', () {
    describe('kReceitaWsBaseUrl', () {
      test('a constante esta definida com a url do ws', () {
        expect(kReceitaWsBaseUrl, 'https://www.receitaws.com.br/v1/cnpj/');
      });
    });
  });
}
