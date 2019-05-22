import 'dart:convert';
import 'package:http/testing.dart';
import 'package:http/http.dart';
import 'package:dacbr_cnpj/src/utilidades/const.dart';
import 'empresa.dart';

final fakeRequestEmpresa = MockClient((request) async {
  if (request.url.toString() == (kReceitaWsBaseUrl + '27865757000102')) {
    return Response(json.encode(kFakeEmpresaJson), 200);
  }
  return Response('Not found', 404);
});

final fakeRequestServerError = MockClient((request) async {
  return Response('Server error', 500);
});
