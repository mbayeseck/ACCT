
class Actualite{
  String _author;
  String _title;
  DateTime _datepub;
  String _image;
  String _description;

  Actualite(
      this._author, this._title, this._datepub, this._image, this._description);

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  DateTime get datepub => _datepub;

  set datepub(DateTime value) {
    _datepub = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get author => _author;

  set author(String value) {
    _author = value;
  }
}