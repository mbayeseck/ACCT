import 'package:ACCT/model/formation.dart';

import 'model/actualite.dart';

Formation addFormationBEP(){
  String matiere = "Coupe et Couture, Technologie, Education artistique, Français, Anglais, Mathématiques";
  String piece = "Extrait de naissance moins de trois mois, Photocopie carte d'identité légalisée, Bonne vie et moeurs, Certificat de résidence, Visite contre visite, Certificat de scolarité de la dernière classe fréquentée ou Photocopie attestation, Quatre photos d'identité";
  return Formation("NIVEAU BEP",
      "3ème Secondaire",
      "3 ans",
      "10/20",
      matiere,
      "60 000 F",
      "25 000 F",
      "60 000 F",
      piece,
      "BEP en Coupe et Couture");
}

Formation addFormationCAP(){
  String matiere = "Coupe et Couture, Technologie, Education artistique, Français, Anglais, Mathématiques, Entretien linge";
  String piece = "Extrait de naissance moins de trois mois, Photocopie carte d'identité légalisée, Bonne vie et moeurs, Certificat de résidence, Visite contre visite, Certificat de scolarité de la dernière classe fréquentée ou Photocopie attestation, Quatre photos d'identité";
  return Formation("NIVEAU BEP",
      "4ème Secondaire",
      "3 ans",
      "10/20",
      matiere,
      "50 000 F",
      "20 000 F",
      "50 000 F",
      piece,
      "CAP en Coupe et Couture");
}

Formation addFormationATTESTE(){
  String matiere = "Coupe et Couture, Français";
  String piece = "Extrait de naissance moins de trois mois, Photocopie carte d'identité légalisée, Bonne vie et moeurs, Certificat de résidence, Visite contre visite, Certificat de scolarité de la dernière classe fréquentée ou Photocopie attestation, Quatre photos d'identité";
  return Formation("NIVEAU BEP",
      "Tous les niveaux",
      "3 ans",
      "10/20",
      matiere,
      "40 000 F",
      "20 000 F",
      "40 000 F",
      piece,
      "Attestation de fin d'étude en Coupe et Couture");
}

Formation addFormationBTS(){
  String matiere = "Dessin de mode, Modélisme, Histoire de la mode, Infographie, Confection, Technologie, Moulage, Français, Anglais, Gestion, Mathématiques, DAO(Dessin Assisté par Ordinateur)";
  String piece = "Extrait de naissance moins de trois mois, Photocopie carte d'identité légalisée, Bonne vie et moeurs, Certificat de résidence, Visite contre visite, Photocopie BAC légalisée ou Photocopie attestation BAC moins de trois mois, Quatre photos d'identité";
  return Formation("NIVEAU BEP",
      "BAC",
      "3 ans",
      "10/20",
      matiere,
      "150 000 F",
      "50 000 F",
      "150 000 F",
      piece,
      "BTS en Coupe et Couture");
}

Formation addFormationBT(){
  String matiere = "Modélisme, Coupe et Couture, Technologie, Education Artistique, Moulage, Français, Anglais, Gestion, Mathématiques, CAO(Coupe Assistée par Ordinateur)";
  String piece = "Extrait de naissance moins de trois mois, Photocopie carte d'identité légalisée, Bonne vie et moeurs, Certificat de résidence, Visite contre visite, Certificat de scolarité de la dernière classe fréquentée ou Photocopie attestation, Quatre photos d'identité";
  return Formation("NIVEAU BEP",
      "1ère, Terminale",
      "3 ans",
      "10/20",
      matiere,
      "115 000 F",
      "40 000 F",
      "115 000 F",
      piece,
      "N/A");
}

List<Actualite> remplirMaList(List<Actualite> act){
  //Actualite actualite;
  Actualite actualite1 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite2 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite3 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite4 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite5 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite6 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite7 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");
  Actualite actualite8 = new Actualite("BG Couture",
      "Conférence donnée par Babacar Gueye",
      new DateTime.now(),
      "acct-logo.png",
      "C'est une conférence qui sera présanté par Babacar Gueye BG COUTURE");

  act.add(actualite1);
  act.add(actualite2);
  act.add(actualite3);
  act.add(actualite4);
//  act.add(actualite5);
//  act.add(actualite6);
//  act.add(actualite7);
//  act.add(actualite8);
}