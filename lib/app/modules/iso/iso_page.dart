import 'package:flutter_modular/flutter_modular.dart';
import 'package:aps8/app/modules/iso/iso_store.dart';
import 'package:flutter/material.dart';

class IsoPage extends StatefulWidget {
  final String title;
  const IsoPage({Key? key, this.title = 'IsoPage'}) : super(key: key);
  @override
  IsoPageState createState() => IsoPageState();
}
class IsoPageState extends State<IsoPage> {
  final IsoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}