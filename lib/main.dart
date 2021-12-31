import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:rota_guido/screen/splash_screen/splash_screen.dart';
import 'amplifyconfiguration.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
      child: MyApp())); //
  // runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();

  }


  void _configureAmplify() async {
    // Add the following line to add API plugin to your app.
    // Auth plugin needed for IAM authorization mode, which is default for REST API.
    Amplify.addPlugins([AmplifyAPI(), AmplifyAuthCognito()]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }


  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('it', "IT"),
      ],

      home: I18n(
        // Usually you should not provide an initialLocale,
        // and just let it use the system locale.

        child: SplashScreen(),
        // child: SocketDemo(),
      ),

      debugShowCheckedModeBanner: false,
      // initialRoute: Routes.SPLASH,
      defaultTransition: Transition.fade,
      onGenerateRoute: RouteGenerator().generateRoute,
      initialBinding: BindingsBuilder(() {
        // Get.put<SplashController>(SplashController());
      }),
    );
  }
}
