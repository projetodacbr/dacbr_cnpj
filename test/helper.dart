import 'package:test/test.dart';

void when(String context, Function() func) => group('when $context', func);
void describe(String method, Function() func) => group('.$method', func);
