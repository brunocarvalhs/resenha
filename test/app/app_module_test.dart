import 'package:flutter_test/flutter_test.dart';
import 'package:resenha/app/app_module.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

void main() {
  setUpAll(() {
    initModule(AppModule());
  });
}
