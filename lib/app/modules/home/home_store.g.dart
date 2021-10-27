// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$dataModelsAtom = Atom(name: 'HomeStoreBase.dataModels');

  @override
  List<DataModel> get dataModels {
    _$dataModelsAtom.reportRead();
    return super.dataModels;
  }

  @override
  set dataModels(List<DataModel> value) {
    _$dataModelsAtom.reportWrite(value, super.dataModels, () {
      super.dataModels = value;
    });
  }

  final _$youtubeControllersAtom =
      Atom(name: 'HomeStoreBase.youtubeControllers');

  @override
  List<YoutubePlayerController> get youtubeControllers {
    _$youtubeControllersAtom.reportRead();
    return super.youtubeControllers;
  }

  @override
  set youtubeControllers(List<YoutubePlayerController> value) {
    _$youtubeControllersAtom.reportWrite(value, super.youtubeControllers, () {
      super.youtubeControllers = value;
    });
  }

  final _$getDataModelAsyncAction = AsyncAction('HomeStoreBase.getDataModel');

  @override
  Future<void> getDataModel() {
    return _$getDataModelAsyncAction.run(() => super.getDataModel());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void getYouTubeControllers() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getYouTubeControllers');
    try {
      return super.getYouTubeControllers();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dataModels: ${dataModels},
youtubeControllers: ${youtubeControllers}
    ''';
  }
}
