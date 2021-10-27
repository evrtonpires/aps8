import 'package:aps8/app/modules/iso/iso_Page.dart';
import 'package:aps8/app/modules/iso/iso_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class IsoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => IsoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => IsoPage()),
  ];
}
