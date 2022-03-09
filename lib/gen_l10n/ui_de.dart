


// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'ui.dart';

/// The translations for German (`de`).
class uiDe extends ui {
  uiDe([String locale = 'de']) : super(locale);

  @override
  String get welcomeText => 'Willkommen bei AimsysCloud';

  @override
  String get signintoyouraccount => 'Melden Sie sich bei Ihrem Konto an';

  @override
  String get signUpTextRow => 'Anmeldung';

  @override
  String get emailTextFormField => 'E-Mail-ID';


  @override
  String get passwordTextFormField => 'Passwort';

  @override
  String get forgetPassTextRow => 'Haben Sie Ihr Passwort vergessen?';

  @override
  String get recover => 'Wiederherstellung';

  @override
  String get signUpText => "Sie haben kein Konto?";

  @override
  String get sizedBox => "Anmelden";

  @override
  String get phone=> "Telefon ";
  @override
  String get name=> "Name";
  @override
  String get city=> "Stadt";
  @override
  String get terms=> "Ich akzeptiere alle Bedingungen" ;
  @override
  String get invalidNumber=>"ungültige Telefon-nummer";
}