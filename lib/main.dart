import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Pages
import 'package:user_save/pages/home_page.dart';

//Pages actividad
import 'package:user_save/actividad/pages/pages.dart';

//SharedPreferences
import 'package:user_save/preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
      home: const RegisterAcPage(),
    );
  }
}
