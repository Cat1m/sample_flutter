import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:sample_flutter/configs/routes/routes.dart';
import 'package:sample_flutter/configs/routes/routes_name.dart';
import 'package:sample_flutter/generated/l10n/app_localizations.dart';
import 'package:sample_flutter/repository/auth_api/auth_api_repository.dart';
import 'package:sample_flutter/repository/movies_api/movies_api_repository.dart';
import 'package:sample_flutter/repository/movies_api/movies_http_api_repository.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter sample',
      themeMode: ThemeMode.light,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
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
  getIt.registerLazySingleton<MoviesApiRepository>(
      () => MoviesHttpApiRepository());
}

//Email: eve.holt@reqres.in

//Password: cityslicka
