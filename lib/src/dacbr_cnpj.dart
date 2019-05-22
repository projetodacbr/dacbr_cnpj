import 'dart:convert';
import 'package:dacbr_cnpj/src/modelos/empresa.dart';
import 'package:dacbr_cnpj/src/utilidades/case_conversor.dart';
import 'package:dacbr_cnpj/src/utilidades/const.dart';
import 'package:dacbr_cnpj/src/utilidades/injector.dart';

class DacbrCnpj {
  static Future<Empresa> searchCNPJ(
    String CNPJ, [forceCase = Case.undefined]
  ) async {
    final _httpClient = Injector().client;
    final apiResult = await _httpClient.get(kReceitaWsBaseUrl + CNPJ);

    if (apiResult.statusCode != 200) {
      throw UnsupportedError(apiResult.body);
    }
    return Empresa.fromJson(json.decode(apiResult.body), forceCase: forceCase);
  }
}
