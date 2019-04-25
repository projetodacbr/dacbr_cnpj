import 'package:dacbr_cnpj/src/utilidades/mapper.dart';
import 'package:test/test.dart';
import '../../helper.dart';

void main() {
  group('Mapper', () {
    describe('map', () {
      String toMap(Map<String, dynamic> data) => data['key'];

      when('recebe null como lista', () {
        test('retorna lista vazia', () {
          final subject = Mapper.map(null, using: toMap);
          expect(subject, isEmpty);
        });
      });

      when('recebe lista de dados', () {
        test('something', () {
          final listData = [
            {'key': 'value1'},
            {'key': 'value2'},
          ];

          final subject = Mapper.map<String>(listData, using: toMap);
          expect(subject, ['value1', 'value2']);
        });
      });
    });
  });
}
