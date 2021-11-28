import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

part "splash_controller.g.dart";

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  _SplashControllerBase() {
    validationUserAuth();
  }

  void validationUserAuth() {
    Timer(const Duration(seconds: 5), () {
      Modular.get<AuthStore>().checkLogin().then((v) async {
        Modular.to.pushReplacementNamed(v ? "/events" : "/login");
      });
    });
  }
}
