import 'package:animate_do/animate_do.dart';
import 'package:dardy/screens/authentication/login/login.dart';
import 'package:dardy/screens/authentication/signup/signup.dart';
import 'package:dardy/screens/splash_screen/splash_screen.dart';
import 'package:dardy/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {



  final routerDelegate = BeamerDelegate(

    initialPath: '/',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) => const SplashScreen(),
        '/welcome': (context, state, data) => ZoomIn(child: WelcomeScreen()),
        '/signin': (context, state, data) => FadeIn(child: LoginScreen()),
        '/signup': (context, state, data) => FadeIn(child: SignupScreen()),

      },
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
    );
  }
}
