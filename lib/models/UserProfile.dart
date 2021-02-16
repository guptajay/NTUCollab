class UserProfile {
  String _ID;
  String _Name;
  String _Mail;

  UserProfile() {
    this._ID = null;
    this._Name = null;
    this._Mail = null;
  }
  String getUserName() => _Name;

  setUserName(String value) {
    this._Name = value;
  }

  String getUserID() => _ID;

  setUserID(String value) {
    this._ID = value;
  }

  // String getUserDisplay() => _Display;
  //
  // setUserDisplay(String url) {
  //   this._Display = url;
  // }

  String getUserMail() => _Mail;

  setUserMail(String mail) {
    this._Mail = mail;
  }
}