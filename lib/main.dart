import 'package:flutter/material.dart';
import 'package:sample_flutter/configs/routes/routes.dart';
import 'package:sample_flutter/configs/routes/routes_name.dart';
import 'package:sample_flutter/configs/themes/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
