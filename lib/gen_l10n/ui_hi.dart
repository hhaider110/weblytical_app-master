


// ignore_for_file: non_constant_identifier_names

import 'ui.dart';

/// The translations for Hindi (`hi`).
class uiHi extends ui {
  uiHi([String locale = 'hi']) : super(locale);

  @override
  String get welcomeText => 'ऐम्सिसक्लाउड में आपका स्वागत है';

  @override
  String get signintoyouraccount => 'अपने अकाउंट में साइन इन करें';

  @override
  String get signUpTextRow => 'साइन अप करें';

  @override
  String get emailTextFormField => 'ईमेल आईडी';


  @override
  String get  passwordTextFormField => 'पासवर्ड';
  @override
  String get forgetPassTextRow => 'अपना कूट शब्द भूल गए?';

  @override
  String get recover => 'की वसूली';

  @override
  String get signUpText => "खाता नहीं है?";
  @override
  String get sizedBox=> "साइन इन करें";

  @override
  String get phone=> "फ़ोन";
  @override
  String get name=> "नाम";
  @override
  String get city=> "शहर ";
  @override
  String get terms=> "मुझे सभी नियम और शर्तें स्वीकार हैं" ;
  @override
  String get invalidNumber=>"अमान्य मोबाइल नंबर";
}
