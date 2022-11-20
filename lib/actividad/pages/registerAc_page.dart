import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Fonts
import 'package:google_fonts/google_fonts.dart';

//Pages
import 'package:user_save/actividad/pages/homeAc_page.dart';

//Widgets
import 'package:user_save/actividad/widgets/widgets.dart';

//SharedPreferences
import 'package:user_save/preferences/preferences.dart';

const List<String> list = <String>[
  'Developer',
  'Designer UI/UX',
  'Product Owner',
  'Scrum Master',
];

class RegisterAcPage extends StatefulWidget {
  const RegisterAcPage({Key? key}) : super(key: key);

  @override
  State<RegisterAcPage> createState() => _RegisterAcPageState();
}

class _RegisterAcPageState extends State<RegisterAcPage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0),
                Text(
                  'Create Account',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF0044ff),
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                  ),
                ),
                Text(
                  'Create a account by filing info below',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF336bfe),
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 40.0),

                //
                TextFieldCustomWidget(
                  keyBoardType: TextInputType.name,
                  hintTexT: 'Names',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey.shade600,
                  ),
                  initialValue: '',
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                ),

                TextFieldCustomWidget(
                  keyBoardType: TextInputType.name,
                  hintTexT: 'Lastnames',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey.shade600,
                  ),
                  initialValue: '',
                  onChanged: (value) {
                    Preferences.lastname = value;
                    setState(() {});
                  },
                ),

                TextFieldCustomWidget(
                  keyBoardType: TextInputType.phone,
                  hintTexT: 'Number phone',
                  prefixIcon: Icon(
                    Icons.phone_android_rounded,
                    color: Colors.grey.shade600,
                  ),
                  initialValue: '',
                  onChanged: (value) {
                    Preferences.number = value;
                    setState(() {});
                  },
                ),

                TextFieldCustomWidget(
                  keyBoardType: TextInputType.emailAddress,
                  hintTexT: 'E-mail',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey.shade600,
                  ),
                  initialValue: '',
                  onChanged: (value) {
                    Preferences.email = value;
                    setState(() {});
                  },
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Rol',
                      prefixIcon: Icon(
                        Icons.book,
                        color: Colors.grey.shade600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFF336bfe),
                        ),
                      ),
                      hintStyle: GoogleFonts.poppins(),
                    ),
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    elevation: 16,
                    focusColor: const Color(0xFF336bfe),
                    autofocus: true,
                    style: const TextStyle(color: Colors.black),
                    //underline: SizedBox(),
                    onChanged: (String? value) {
                      Preferences.role = value!;
                      print(value);
                      setState(() {
                        dropdownValue = value;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 30.0),

                //Button
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const HomeAcPage(),
                        ));
                  },
                  color: const Color(0xFF336bfe),
                  minWidth: double.infinity,
                  height: 62,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
