import 'package:ACCT/widgets/texte_codembx.dart';
import 'package:flutter/material.dart';
import 'package:ACCT/model/actualite.dart';
import 'package:intl/intl.dart';
import 'package:ACCT/model/date_convertisseur.dart';
import 'page_detail.dart';

class Liste extends StatefulWidget {

  List<Actualite> actualite;

  Liste(List<Actualite> actualite) {
    this.actualite = actualite;
  }

  @override
  _ListeState createState() => new _ListeState();


}

class _ListeState extends State<Liste> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var now = new DateTime.now().toLocal();

    var dateFormat = new DateFormat("EEE, dd MMM yyyy HH:mm:ss");
    final taille = MediaQuery.of(context).size.width / 2.5;
    return new ListView.builder(
        itemCount: widget.actualite.length,
        itemBuilder: (BuildContext context, int i) {
          Actualite item = widget.actualite[i];
          return new Container(
            child: new Card(
                elevation: 10.0,
                child: new InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                      return new PageDetail(item);
                    }));
                  },
                  child: new Column(
                    children: <Widget>[
                      padding(),
                      new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new TexteCodembx(item.author),
                          new TexteCodembx(new DateConvertisseur().convertirDate(dateFormat.format(item.datepub).toString()), color: Colors.red,)
                      //    new TexteCodabee(item.datepub.toString(), color: Colors.red,)
                        ],
                      ),
                      padding(),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Card(
                            elevation: 7.5,
                            child: new Container(
                              width: taille,
                              child: Image.asset('images/' + item.image, fit: BoxFit.fill,),
                            ),
                          ),
                          new Container(
                            width: taille,
                            child: new TexteCodembx(item.title),
                          )
                        ],

                      ),
                      padding(),
                    ],
                  ),
                )


            ),
            padding: EdgeInsets.only(right: 7.5, left: 7.5),
          );
        });
  }

  Padding padding() {
    return new Padding(padding: EdgeInsets.only(top: 10.0));
  }
}