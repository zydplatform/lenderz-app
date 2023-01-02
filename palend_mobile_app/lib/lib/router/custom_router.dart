import 'package:flutter/material.dart';
import 'package:palend/pages/about_page.dart';
import 'package:palend/pages/home_page.dart';
import 'package:palend/pages/not_found_page.dart';
import 'package:palend/pages/settings_page.dart';
import 'package:palend/router/route_constants.dart';
import 'package:palend/pages/welcome.dart';
import 'package:palend/pages/splash.dart';
import 'package:palend/pages/target_investment.dart';
import 'package:palend/widgets/step_wizard.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case welcomeRoute:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case targetRoute:
        return MaterialPageRoute(builder: (_) => TargetInvestScreen());
      case stepRoute:
        return MaterialPageRoute(builder: (_) => MyStepWizard());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
