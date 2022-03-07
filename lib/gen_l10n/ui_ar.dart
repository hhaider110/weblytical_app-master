// TODO Implement this library.
import 'ui.dart';

/// The translations for Arabic (`ar`).
class uiAr extends ui {
  uiAr([String locale = 'ar']) : super(locale);
  @override
  String get welcomeText => 'Welcome To AimsysCloud';

  @override
  String get signintoyouraccount => 'Sign in to your account';

  @override
  String get signUpTextRow => 'Signup';

  @override
  String get emailTextFormField => 'Email ID';


  @override
  String get passwordTextFormField => 'Email ID';

  @override
  String get forgetPassTextRow => 'Forgot your password?';

  @override
  String get recover => 'recover';
}


