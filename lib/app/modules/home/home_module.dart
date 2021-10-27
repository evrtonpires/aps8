import 'package:aps8/app/modules/shared/auth/auth_controller.dart';
import 'package:aps8/app/modules/shared/auth/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home/home_store.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<AuthRepository>((i) => AuthRepository(dio: i.get())),
    Bind((i) => AuthController()),
    Bind((i) => Dio()),
    Bind((i) => HomeStore(authController: i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
