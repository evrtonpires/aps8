import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';
import 'widgets/view_iso.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    store.getDataModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APS - 8P'),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: store.dataModels.length,
            itemBuilder: (_, index) {
              if (store.dataModels.length == 0 &&
                  store.youtubeControllers.length == 0) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  ViewIso(
                    data: store.dataModels[index],
                    controller: store.youtubeControllers[index],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              );
            });
      }),
    );
  }
}
