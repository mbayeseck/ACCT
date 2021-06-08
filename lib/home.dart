import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ACCT/fragments/formationPage.dart';
import 'package:ACCT/fragments/homeActualite.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

//class Home extends StatelessWidget {
class Home extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     List<CustomListTile> _customListTileForNavigatorMenu = <CustomListTile>[
         CustomListTile(Icons.home,'ACCT',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))},true),
         CustomListTile(Icons.notifications_active,"Fil d'actualité",()=>{Navigator.of(context).pop(), Navigator.push(context, MaterialPageRoute(builder: (context) => HomeAct(title: "Fil d'actualité",)))},true),
         CustomListTile(Icons.menu_book_outlined,'Offre de Formation',()=>{Navigator.of(context).pop(), Navigator.push(context, MaterialPageRoute(builder: (context) => formationPage()))},true)
    ];
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
     // key: _scaffoldKey,
      appBar: AppBar(
       // leading: IconButton(
       //   icon: Icon(Icons.menu),
        //  tooltip: 'Menu de Navigation',
        //  onPressed: null,
       // ),
        title: Text('ACCT'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.circle_notifications),
            tooltip: 'Recherche',
            onPressed: (){

            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.blueAccent,
                  Colors.redAccent
                ])
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(20.01)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8.0),
                        child: Image.asset('images/acct-logo.png', width: 80, height: 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('ACCT', style: TextStyle(color: Colors.white, fontSize: 20.0),),)
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.home,'ACCT',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))},true),
            CustomListTile(Icons.notifications_active,"Fil d'actualité",()=>{Navigator.of(context).pop(), Navigator.push(context, MaterialPageRoute(builder: (context) => HomeAct(title: "Fil d'actualité",)))},true),
            CustomListTile(Icons.menu_book_outlined,'Offre de Formation',()=>{Navigator.of(context).pop(), Navigator.push(context, MaterialPageRoute(builder: (context) => formationPage()))},true),
            CustomListTile(Icons.view_agenda,'Agenda',()=>{}, false),
            CustomListTile(Icons.build,'Outils',()=>{Navigator.of(context).pop()}, false),
            CustomListTile(Icons.settings_sharp,'Paramètres',()=>{Navigator.of(context).pop()},false),
            CustomListTile(Icons.help,'A propos...',()=>{ Navigator.of(context).pop(), showDialog(
              context: context,
              builder: (BuildContext context){
              return getAlertDialogApropos("A propos...", context);
               }
               )},false),
            CustomListTile(Icons.logout,'Quitter',()=>{exit(0)}, false),
          ],
        ),
      ),

      // body is the majority of the screen.
      body:
      ListView(
      //  scrollDirection: Axis.vertical,
       // shrinkWrap: true,
        children: [
          dateHomeSection,
          imageHomeSection,
          titleHomeSection,
          _customListTileForNavigatorMenu.elementAt(_selectedIndex)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>
             [
               BottomNavigationBarItem(
                   icon: Icon(Icons.home),
                   label: "ACCT"
               ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_active),
                  label: "Fil d'actualité"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_outlined),
                  label: "Formation"
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
      ),
    );
  }

  void _onTappedItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}



// Custom ListTile
class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function ontap;
  bool sousMenu;

  CustomListTile(this.icon, this.text, this.ontap, this.sousMenu);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.redAccent,
          onTap: ontap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon, color: Colors.blue,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text, style: TextStyle(
                        fontSize: 16.0, color: Colors.red
                        )
                      ,),
                    ),
                  ],
                ),
                if(sousMenu)
                  Icon(Icons.arrow_forward_ios_sharp)
               // Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }


}

var now = new DateTime.now().toLocal();

var dateFormat = new DateFormat("EEE, dd MMM yyyy");

var dateToday = dateFormat.format(now);

Widget dateHomeSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Container(
        child: texteAvecStyle(dateToday,
            color: Colors.blue,
        ),
      ),
    ],
  ),
);

Widget imageHomeSection = Container(
  child: SizedBox(
      height: 250.0,
      width: 400.0,
      child: Carousel(
        images: [
          ExactAssetImage("images/acct-photo1.jpg"),
          ExactAssetImage("images/acct-photo2.jpg"),
          ExactAssetImage("images/acct-photo3.jpg"),
          ExactAssetImage("images/acct-photo4.jpg"),
          ExactAssetImage("images/acct-photo5.jpg"),
        ],
        boxFit: BoxFit.cover,
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.blue,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.red.withOpacity(0.5),
        borderRadius: true,
      )
  ),
);

Widget titleHomeSection = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 2),
              child: Card(
                child: texteAvecStyle(
                    'Académie de Coupe et Couture de Thiès - ACCT',
                    color: Colors.blue,
                    fontStyle: FontStyle.normal),
              ),
            ),
        /*   Container(
              padding: const EdgeInsets.only(bottom: 2),
              child: Card(
                child: texteAvecStyle(
                    "<<<<La mode sénégalaise à Thiès>>>>",
                    color: Colors.redAccent, textAlign: TextAlign.center),
              ),
            ),
            */
            Container(
              padding: const EdgeInsets.only(bottom: 2),
              child: Card(
                child: texteAvecStyle(
                    "Autorisation /Arrêté N° 021492 MFPAA/SG/DFPT du 24/11/2015",
                    color: Colors.blue),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 2),
              color: Colors.blue,
              child: Card(
                color: Colors.red,
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Column(
                  children: [
                    texteAvecStyle("HLM/THIES, Rue 18 X 17, Villa N°199 en Face du Bureau des HLM"),
                    texteAvecStyle("Tél : (00221) 33 951 01 86 / 77 656 80 99 / 77 625 00 37"),
                    texteAvecStyle("Site web : www.acct.sn "),
                    texteAvecStyle("E-mail : acctthies@gmail.com"),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Text texteAvecStyle(String data, {color: Colors.white, fontSize: 18.0, fontStyle: FontStyle.italic, textAlign: TextAlign.center}) {
  return new Text(
    data,
    textAlign: textAlign,
    style: new TextStyle(
        color: color,
        fontStyle: fontStyle,
        fontSize: fontSize
    ),
  );
}

AlertDialog getAlertDialogApropos(String titre, BuildContext context){
  return AlertDialog(
    contentPadding: EdgeInsets.only(left: 20, right: 20),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    backgroundColor: Colors.white,
    title: Text(titre,
      textScaleFactor: 1.0,
      style: TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,),
    content: SingleChildScrollView(child: getAlertDialogContent()),
    actions: <Widget>[
      FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Fermer"))
    ],
  );
}

Column getAlertDialogContent(){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("ACCT v1.0.0"),
            Text("Copyright ACCT \u00a9"+(new DateTime.now().year).toString()),
            Text("Développé par Mbaye Kébé SECK"),
            Text("E-mail: seckmbayekebe@gmail.com")
          ],
        ),
      )
    ],
  );
}
