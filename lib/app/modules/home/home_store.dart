import 'package:aps8/app/modules/shared/auth/auth_controller.dart';
import 'package:aps8/app/modules/shared/models/data_model.dart';
import 'package:mobx/mobx.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  HomeStoreBase({required this.authController});

  final AuthController authController;

  @observable
  List<DataModel> dataModels = [];
  @observable
  List<YoutubePlayerController> youtubeControllers = [];

  @action
  Future<void> getDataModel() async {
    dataModels = await authController.getData();

    dataModels.forEach((element) {
      element.description!.replaceAll('/r/n', '\r\n\n');
    });
    getYouTubeControllers();
  }

  //----------------------------------------------------------------------------
  @action
  void getYouTubeControllers() {
    dataModels.forEach((element) {
      String? videoId;
      videoId = YoutubePlayer.convertUrlToId(element.urlVideo!);

      YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
            forceHD: true,
            controlsVisibleAtStart: true),
      );

      youtubeControllers.add(_controller);
    });
  }
}
