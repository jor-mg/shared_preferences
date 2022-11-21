import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

//Pages
import 'package:user_save/pages/home_page.dart';

//Pages actividad
import 'package:user_save/actividad/pages/pages.dart';

//SharedPreferences
import 'package:user_save/preferences/preferences.dart';

//Routes
import 'package:user_save/routes/routes.dart';

//Provider
import 'package:user_save/provider/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(isDarkMode: Preferences.theme),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      // ThemeData(
      //   useMaterial3: true,
      //   //primarySwatch: Colors.blue,
      //   primarySwatch: Colors.green,
      //   textTheme: GoogleFonts.poppinsTextTheme(),
      // ),
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: MyRoutes.rHome,
      //home: const HomePage(),
      //home: const RegisterAcPage(),
    );
  }
}
