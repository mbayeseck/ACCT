import 'package:ACCT/widgets/texte_codembx.dart';
import 'package:flutter/material.dart';

class Chargement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new TexteCodembx("Chargement en cours...",
        fontStyle: FontStyle.italic,
        fontSize: 30.0,
      ),
    );
  }

}