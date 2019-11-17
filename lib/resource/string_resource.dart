import 'dart:ui' as ui;

class Strings {
  final String _lang;

  Strings._privateConstructor(this._lang);

  static final Strings instance =
  Strings._privateConstructor(ui.window.locale.languageCode);

  String get appName => "Recycler";

  String email() => "Email";

  String password() {
    switch(_lang) {
      case "pt": return "Senha";
      default: return "Password";
    }
  }

  String forgotPassword() {
    switch(_lang) {
      case "pt": return "Esqueceu sua senha?";
      default: return "Forgot your password?";
    }
  }

  String login() {
    switch(_lang) {
      case "pt": return "Entrar";
      default: return "Login";
    }
  }

  String fieldEmpty() {
    switch(_lang) {
      case "pt": return "Campo não pode ser vazio";
      default: return "Field can't be empty";
    }
  }
}