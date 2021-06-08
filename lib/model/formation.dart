class Formation{
  String _nom;
  String _niveau;
  String _duree;
  String _moyenne;
  String _matiere;
  String _inscription;
  String _mensualite;
  String _reinscription;
  String _pieceAfournir;
  String _diplomedecerne;

  Formation.diplome(
      this._nom,
      this._niveau,
      this._duree,
      this._moyenne,
      this._matiere,
      this._inscription,
      this._mensualite,
      this._reinscription,
      this._pieceAfournir);


  Formation(
      this._nom,
      this._niveau,
      this._duree,
      this._moyenne,
      this._matiere,
      this._inscription,
      this._mensualite,
      this._reinscription,
      this._pieceAfournir,
      this._diplomedecerne);


  String get diplomedecerne => _diplomedecerne;

  set diplomedecerne(String value) {
    _diplomedecerne = value;
  }

  String get pieceAfournir => _pieceAfournir;

  set pieceAfournir(String value) {
    _pieceAfournir = value;
  }

  String get reinscription => _reinscription;

  set reinscription(String value) {
    _reinscription = value;
  }

  String get mensualite => _mensualite;

  set mensualite(String value) {
    _mensualite = value;
  }

  String get inscription => _inscription;

  set inscription(String value) {
    _inscription = value;
  }

  String get matiere => _matiere;

  set matiere(String value) {
    _matiere = value;
  }

  String get moyenne => _moyenne;

  set moyenne(String value) {
    _moyenne = value;
  }

  String get duree => _duree;

  set duree(String value) {
    _duree = value;
  }

  String get niveau => _niveau;

  set niveau(String value) {
    _niveau = value;
  }

  String get nom => _nom;

  set nom(String value) {
    _nom = value;
  }
}