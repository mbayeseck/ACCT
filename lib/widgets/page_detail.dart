import 'package:ACCT/widgets/texte_codembx.dart';
import 'package:flutter/material.dart';
import 'package:ACCT/model/actualite.dart';

class PageDetail extends StatelessWidget {

  PageDetail(Actualite actualite) {
    this.item = actualite;
  }

  Actualite item;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Détail de l'article"),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            padding(),
            new TexteCodembx(item.title, fontSize: 25.0, fontStyle: FontStyle.italic,),
            padding(),
            new Card(
              elevation: 7.5,
              child: new Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: new Image.asset('images/' + item.image, fit: BoxFit.fill,),
              ),
            ),
            padding(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new TexteCodembx(item.author),
                new TexteCodembx(item.datepub.toString(), color: Colors.red,),
              ],
            ),
            padding(),
            new TexteCodembx(item.description),
            padding(),
          ],
        ),
      ),
    );
  }

  Padding padding() {
    return new Padding(padding: EdgeInsets.only(top: 20.0));
  }

}