import 'package:flutter/material.dart';

//Fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:user_save/actividad/widgets/drawer_custom_widget.dart';

class HomeAcPage extends StatelessWidget {
  const HomeAcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1b5aff),
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const DrawerCustomWidget(),
      body: const Center(
        child: Text('Information home page'),
      ),
    );
  }
}
