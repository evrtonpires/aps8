import 'package:aps8/app/modules/shared/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ViewIso extends StatelessWidget {
  ViewIso({
    Key? key,
    required this.data,
    required this.controller,
  }) : super(key: key);

  final DataModel data;
  final YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(data.title!),
              SizedBox(
                height: 20,
              ),
              Text(data.description!),
              SizedBox(
                height: 10,
              ),
              YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                ),
                builder: (BuildContext, player) {
                  return Column(
                    children: [player],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
