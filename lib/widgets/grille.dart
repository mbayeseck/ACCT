import 'package:ACCT/widgets/texte_codembx.dart';
import 'package:flutter/material.dart';
import 'package:ACCT/model/actualite.dart';
import 'package:intl/intl.dart';
import 'package:ACCT/model/date_convertisseur.dart';
import 'page_detail.dart';

class Grille extends StatefulWidget {
  List<Actualite> actualite;

  Grille(List<Actualite> actualite) {
    this.actualite = actualite;
  }

  @override
  _GrilleState createState() => new _GrilleState();


}

class _GrilleState extends State<Grille>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var now = new DateTime.now().toLocal();

    var dateFormat = new DateFormat("EEE, dd MMM yyyy HH:mm:ss");
    return new GridView.builder(
        itemCount: widget.actualite.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) {
          Actualite item = widget.actualite[i];
          return new InkWell(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return new PageDetail(item);
                }));
              },
              child: new Card(
                elevation: 10.0,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new TexteCodembx(item.author),
                        new TexteCodembx(DateConvertisseur().convertirDate(dateFormat.format(item.datepub).toString()), color: Colors.red,)
                    //    new TexteCodabee(item.datepub.toString(), color: Colors.red,)
                      ],
                    ),
                    new TexteCodembx(item.title),
                    new Card(
                      elevation: 7.5,
                      child: new Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: new Image.asset('images/' + item.image, fit:  BoxFit.fill,),
                      ),
                    )

                  ],
                ),
              )
          );

        });
  }
}