// ignore_for_file: camel_case_types

import 'ui.dart';

/// The translations for English (`tr`).
class uiTR extends ui {
  uiTR([String locale = 'tr']) : super(locale);

  @override
  String get welcomeText => "AimsysCloud'a Hoş Geldiniz";

  @override
  String get signintoyouraccount => 'hesabınıza giriş yapın';

  @override
  String get signUpTextRow => 'Üye olmak';

  @override
  String get emailTextFormField => 'Email kimliği';


  @override
  String get passwordTextFormField => 'ŞİFRE';

  @override
  String get forgetPassTextRow => 'Parolanızı mı unuttunuz?';

  @override
  String get recover => 'Kurtarmak';

  @override
  String get signUpText => "Hesabınız yok mu?";

  @override
  String get sizedBox => "Kayıt olmak";

  @override
  String get phone=> "Telefon";
  @override
  String get name=> "İsim";
  @override
  String get city=> "Şehir";
  @override
  String get terms=> "Tüm hüküm ve koşulları kabul ediyorum" ;

  @override
  String get invalidNumber=>"geçersiz telefon numarası";
}