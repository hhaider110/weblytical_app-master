


// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'ui.dart';

/// The translations for English (`en`).
class uiEs extends ui {
  uiEs([String locale = 'en']) : super(locale);

  @override
  String get welcomeText=> 'Bienvenido a AimsysCloud';

  @override
  String get signintoyouraccount => 'Iniciar sesión en su cuenta';

  @override
  String get signUpTextRow => 'recuperar';

  @override
  String get emailTextFormField=> 'Identificación de correo';


  @override
  String get passwordTextFormField=> 'Identificación de correo';

  @override
  String get forgetPassTextRow => 'Clave';

  @override
  String get recover => 'Inscribirse';

  @override
  String get signUpText => "No tienes una cuenta?";
  @override
  String get sizedBox=> "INICIAR SESIÓN";
  @override
  String get phone=> "teléfono ";
  @override
  String get name=> "nombre";
  @override
  String get city=> "ciudad ";
  @override
  String get terms=> "Acepto todos los términos y condiciones" ;

  @override
  String get invalidNumber=>"Numero de celular invalido";

}
