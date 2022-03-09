// TODO Implement this library.
import 'ui.dart';

/// The translations for Arabic (`ar`).
class uiAr extends ui {
  uiAr([String locale = 'ar']) : super(locale);
  @override
  String get welcomeText => '   مرحبًا بك فيأهداف';

  @override
  String get signintoyouraccount => '  تسجيل الدخول إلى حسابك';

  @override
  String get signUpTextRow => 'اشتراك';

  @override
  String get emailTextFormField => 'عنوان الايميل';


  @override
  String get passwordTextFormField => 'كلمه السر';

  @override
  String get forgetPassTextRow => 'نسيت رقمك السري؟';

  @override
  String get recover => 'استعادة';

  @override
  String get signUpText => "ليس لديك حساب؟";
  @override
  String get sizedBox=> "تسجيل الدخول";

  @override
  String get phone=> " هاتف";
  @override
  String get name=> "اسم";
  @override
  String get city=> " مدينة";
  @override
  String get terms=> "أوافق على جميع الشروط والأحكام" ;

  @override
  String get invalidNumber=>"رقم الجوال غير صالح";


}


