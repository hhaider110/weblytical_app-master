import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/flutter_localizations.dart';
import 'package:ui/l10n/l10n.dart';
import 'package:ui/page/localization_app_page.dart';
import 'package:ui/page/localization_system_page.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ui/provider/locale_provider.dart';
import 'package:provider/provider.dart';

import 'gen_l10n/app_localizations.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();  
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Sign_in';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: title,

            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: homepage(),
          );
        },
      );
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<Homepage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Text('Localization', style: style),
          label: ('System'),
        ),
        BottomNavigationBarItem(
          icon: Text('Localization', style: style),
          label: ('App'),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return LocalizationSystemPage();
      case 1:
        return LocalizationAppPage();
      default:
        return Container();
    }
  }
}