import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:sample_flutter/configs/routes/routes.dart';
import 'package:sample_flutter/configs/routes/routes_name.dart';
import 'package:sample_flutter/configs/themes/themes.dart';
import 'package:sample_flutter/generated/l10n/app_localizations.dart';
import 'package:sample_flutter/repository/auth_api/auth_api_repository.dart';

import 'repository/auth_api/auth_http_api_repository.dart';

GetIt getIt = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  servicesLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter sample',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

void servicesLocator() {
  getIt.registerLazySingleton<AuthApiRepository>(() => AuthHttpApiRepository());
}

//Email: eve.holt@reqres.in

//Password: cityslicka
