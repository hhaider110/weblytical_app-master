
// ignore_for_file: camel_case_types

import 'ui.dart';

/// The translations for German (`de`).
class uiNL extends ui {
  uiNL([String locale = 'nl']) : super(locale);

  @override
  String get welcomeText => 'Welkom bij AimsysCloud';

  @override
  String get signintoyouraccount => 'Log in op uw account';

  @override
  String get signUpTextRow => 'Aanmelden';

  @override
  String get emailTextFormField => ' Identiteit';


  @override
  String get  passwordTextFormField => 'Wachtwoord';

  @override
  String get forgetPassTextRow => 'uw wachtwoord vergeten?';

  @override
  String get emailController=> "identiteit";

  @override
  String get recover => 'Herstellen';

  @override
  String get signUpText => "Heb je geen account?";

  @override
  String get sizedBox=> "AANMELDEN";

  @override
  String get phone=> " telefoon";
  @override
  String get name=> "Naam";
  @override
  String get city=> " Stad ";
  @override
  String get terms=> "Ik accepteer alle voorwaarden" ;

  @override
  String get invalidNumber=>"Ongeldig telefoonnummer";
}
