// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui/ui/screens/dashboard.dart';
import 'package:ui/ui/screens/signin.dart';
import 'package:ui/ui/screens/signup.dart';
import 'package:provider/provider.dart';
import 'package:ui/LanguageChangeProvider.dart';
import 'package:ui/utils/menu_controller.dart';
import 'constants.dart';
import 'generated/l10n.dart';
import 'ui/screens/home.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MenuController>(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login",

        // theme: ThemeData(primaryColor: Colors.orange[200]),
        routes: <String, WidgetBuilder>{
          SIGN_IN: (BuildContext context) => const SignInPage(),
          SIGN_UP: (BuildContext context) => const SignUpScreen(),
          DASHBOARD: (BuildContext context) => const DashBoardScreen(),
          HOME: (BuildContext context) => const Home(),
        },
        initialRoute: SIGN_IN,


        locale: Provider
            .of<LanguageChangeProvider>(context, listen: true)
            .currentLocale,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,




      ),
    );
  }
}

 class Login extends StatefulWidget {
      const Login({ Key key,  this.title}) : super(key: key);

      final String title;
      @override
      _LoginState createState() => _LoginState();
      }

          class _LoginState extends State<Login> {
      int _counter = 0;

      void _incrementCounter() {
      setState(() {
      _counter++;
      });
      }

      @override
      Widget build(BuildContext context) {

      return Scaffold(
      appBar: AppBar(

      title: Text(widget.title),
      ),
      body: Center(

      child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text(S.of(context).welcomeText),
      const Text(
      'You have pushed the button this many times:',
      ),
      Text(
      '$_counter',
      style: Theme.of(context).textTheme.headline4,
      ),
      ElevatedButton(onPressed: (){
      context.read<LanguageChangeProvider>().changeLocale("hi");
      }, child: const Text("Hindi")),
      ElevatedButton(onPressed: (){
      context.read<LanguageChangeProvider>().changeLocale("en");
      }, child: const Text("English")),
      ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      );
      }
      }

