import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ACCT/model/formation.dart';
import 'package:ACCT/utils.dart';

class formationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Offre de Formation"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(20),
          childAspectRatio: 3/2,
          children: [
              GestureDetector(
                  child: Container(
                    child:
                    Center(
                      child: Text("NIVEAU BEP", style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold
                      ),),
                    ),
                  color: Colors.green),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return getAlertDialogFormation("NIVEAU BEP", addFormationBEP(), context, null);
                        }
                    );
                  }),
            GestureDetector(
              child: Container(
              child: Center(child: Text("NIVEAU CAP", style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold
              ),)),
                  color: Colors.blue),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("NIVEAU CAP", addFormationCAP(), context, null);
                    }
                );
              },),
            GestureDetector(
              child: Container(
                child: Center(
                  child: Text("NIVEAU BTS", style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold
                  ),),
                ),
                  color: Colors.pinkAccent),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("NIVEAU BTS", addFormationBTS(), context, null);
                    }
                );
              },),
            GestureDetector(
              child: Container(
                child: Center(
                  child: Text("NIVEAU ATTESTE", style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold
                  ),),
                ),
                  color: Colors.purpleAccent),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("NIVEAU ATTESTE", addFormationATTESTE(), context, null);
                    }
                );
              },),
            GestureDetector(
              child: Container(
                  child: Center(
                    child: Text("NIVEAU BT", style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold
                    ),),
                  ),
                  color: Colors.cyanAccent),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("NIVEAU BT", addFormationBT(), context, null);
                    }
                );
              },),
            GestureDetector(
              child: Container(
                  child: Center(
                    child: Text("EXAMEN DE FIN D'ETUDES", style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold
                    ),),
                  ),
                  color: Colors.orangeAccent),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("EXAMEN DE FIN D'ETUDES", null, context, 1);
                    }
                );
              },),
            GestureDetector(
              child: Container(
                  child: Center(
                    child: Text("STAGE ET UNIFORME", style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold
                    ),),
                  ),
                  color: Colors.yellowAccent),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("STAGE ET UNIFORME", null, context, 2);
                    }
                );
              },),
            GestureDetector(
              child: Container(
                  child: Center(
                    child: Text("DIPLÔMES ET EQUIVALENCES", style: TextStyle(
                        fontSize: 11, fontWeight: FontWeight.bold
                    ),),
                  ),
                  color: Colors.tealAccent),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return getAlertDialogFormation("DIPLÔMES ET EQUIVALENCES", null, context, 3);
                    }
                );
              },),
          ],
        ),
    );
  }
}

AlertDialog getAlertDialogFormation(String nomFormation, Formation form, BuildContext context, int element){
  return AlertDialog(
    contentPadding: EdgeInsets.only(left: 20, right: 20),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    backgroundColor: Colors.white,
    title: Card(
      elevation: 5,
      child: Text(nomFormation,
        textScaleFactor: 2.0,
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,),
    ),
    content: SingleChildScrollView(child: getAlertDialogContent(form, element)),
    actions: <Widget>[
      FlatButton(
          onPressed: (){
            Navigator.pop(context);
      },
          child: Text("Fermer"))
    ],
  );
}

Column getAlertDialogContent(Formation form, int element){

  if(form != null){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("NIVEAU D'ENTREE: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.niveau),
              Text("DUREE DE LA FORMATION: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.duree),
              Text("MOYENNE REQUISE: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.moyenne),
              Text("MATIERES DISPENSEES: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.matiere),
              Text("DIPLÔME DECERNE: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.diplomedecerne),
              Text("INSCRIPTION: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.inscription),
              Text("MENSUALITE: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.mensualite),
              Text("REINSCRIPTION: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.reinscription),
              Text("PIECES A FOURNIR: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(form.pieceAfournir, ),
            ],
          ),
        )
      ],
    );
  }
  else if(element == 1){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("A chaque fin d'année, l'élève devra faire un test de passage et à la fin de la 3ème année, un examen de sorti est organisé.")
            ],
          ),
        )
      ],
    );
  }
  else if(element == 2){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("STAGE: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("A partir de la première année, les élèves peuvent suivre un stage d'imprégration dans un atelier de référence aux choix."),
              Text("UNIFORME: ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Les élèves de l'ACCT à travers leurs tenues, se distingue par les couleurs de l'école : bleu(pantalon), blanc(chemise), rouge(veste)."),
              Text("NB : ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Les frais de la tenue sont à la charge de l'élève.")
         ]
        )
        )
      ],
    );
  }
  else if(element == 3){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("N/A")
            ],
          ),
        )
      ],
    );
  }
  else {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("N/A")
            ],
          ),
        )
      ],
    );
  }
}