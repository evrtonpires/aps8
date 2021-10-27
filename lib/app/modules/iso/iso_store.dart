import 'package:mobx/mobx.dart';

part 'iso_store.g.dart';

class IsoStore = _IsoStoreBase with _$IsoStore;
abstract class _IsoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}