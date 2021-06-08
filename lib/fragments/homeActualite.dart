import 'package:flutter/material.dart';
import 'package:ACCT/model/actualite.dart';
import 'package:ACCT/widgets/chargement.dart';
import 'package:ACCT/widgets/liste.dart';
import 'package:ACCT/widgets/grille.dart';

import '../utils.dart';

class HomeAct extends StatefulWidget {
  HomeAct({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<HomeAct> {

  List<Actualite> act = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    remplirMaList(act);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                //  act = null;
                //  remplirMaList(act);
                });
              })
        ],
      ),
      body: // Text("OK EEE"),
        choixDuBody(),
    );
  }

  Widget choixDuBody() {
    if (act == null) {
      return new Chargement();
    } else {
      Orientation orientation = MediaQuery.of(context).orientation;
      if (orientation == Orientation.portrait) {
        //Liste
          return new Liste(act);
      } else {
        //Grille
          return new Grille(act);
      }
    }
  }
}