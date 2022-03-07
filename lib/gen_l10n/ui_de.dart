


// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'ui.dart';

/// The translations for German (`de`).
class uiDe extends ui {
  uiDe([String locale = 'de']) : super(locale);

  @override
  String get welcomeText => 'welkom bij AimsysCloud';

  @override
  String get signintoyouraccount => 'Log in op uw account';

  @override
  String get signUpTextRow => 'herstellen';

  @override
  String get emailTextFormField => 'E-mail identiteit';


  @override
  String get  passwordTextFormField => 'wachtwoord';

  @override
  String get forgetPassTextRow => 'wachtwoord?';

  @override
  String get recover => 'Aanmelden';
}
