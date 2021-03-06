import 'package:aps8/app/modules/shared/models/data_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'auth_repository.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

abstract class _AuthController with Store {
  final AuthRepository _authRepository = Modular.get();

  //----------------------------------------------------------------------------
  Future<bool> checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  //----------------------------------------------------------------------------

  Future<List<DataModel>> getData() async {
    try {
      var connectivityResult = await checkConnectivity();

      if (connectivityResult) {
        return await _authRepository.getData();
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
//----------------------------------------------------------------------------
}
