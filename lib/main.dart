// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui/gen_l10n/ui.dart';
import 'package:ui/l10n/l10n.dart';
import 'package:ui/ui/screens/dashboard.dart';
import 'package:ui/ui/screens/signin.dart';
import 'package:ui/ui/screens/signup.dart';
import 'package:provider/provider.dart';
import 'package:ui/LanguageChangeProvider.dart';
import 'package:ui/utils/menu_controller.dart';
import 'constants.dart';
import 'package:ui/l10n/l10n.dart';
import 'ui/screens/home.dart';
import 'package:ui/locale_provider.dart';
import 'package:ui/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    //final provider = Provider.of<MenuController>(context);
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
          //provider: locale => Provider.of<MenuController>(context).locale
        ),
          ListenableProvider(create: (context) => LocaleProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login",
      //  locale: provider.locale,
        supportedLocales: L10n.all,
        localizationsDelegates: [
          ui.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        routes: <String, WidgetBuilder>{
          SIGN_IN: (BuildContext context) =>  const SignInPage(),
          SIGN_UP: (BuildContext context) =>  const SignUpScreen(),
          DASHBOARD: (BuildContext context) =>  const DashBoardScreen(),
          HOME: (BuildContext context) => const Home(),
        },
        initialRoute: SIGN_IN,
        // home: PopoverExample(),

      ),
    );
  }
}
