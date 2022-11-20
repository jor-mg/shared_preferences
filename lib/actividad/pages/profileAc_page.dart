import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_save/actividad/widgets/textfield_custom_widget.dart';
import 'package:user_save/preferences/preferences.dart';

class ProfileAcPage extends StatefulWidget {
  const ProfileAcPage({Key? key}) : super(key: key);

  @override
  State<ProfileAcPage> createState() => _ProfileAcPageState();
}

class _ProfileAcPageState extends State<ProfileAcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 35.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/bg.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (Preferences.img == '')
                          ? GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    // <-- for border radius
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  builder: (context) => Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                        left: 20.0,
                                        right: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Center(
                                          child: Container(
                                            width: 45,
                                            height: 5,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 15.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                        (Preferences.img.isNotEmpty)
                                            ? Text(
                                                'Edit URL Image',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              )
                                            : Text(
                                                'Enter your URL Image',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                        const SizedBox(height: 10.0),
                                        TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          initialValue: Preferences.img,
                                          onChanged: (value) {
                                            Preferences.img = value;
                                            //setState(() {});
                                          },
                                          style: GoogleFonts.poppins(),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                width: 2,
                                                color: Color(0xFF336bfe),
                                              ),
                                            ),
                                            isDense: true,
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'URL Image',
                                            hintStyle: GoogleFonts.poppins(),
                                            prefixIcon: const Icon(Icons.photo),
                                            prefixIconColor: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                        //Button
                                        MaterialButton(
                                          onPressed: () {
                                            setState(() {});
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
                                            (Preferences.img.isEmpty)
                                                ? 'Register'
                                                : 'Update',
                                            style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: const CircleAvatar(
                                radius: 53,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 50,
                                  child: Icon(
                                    Icons.photo,
                                    size: 30,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    // <-- for border radius
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  builder: (context) => Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                        left: 20.0,
                                        right: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Center(
                                          child: Container(
                                            width: 45,
                                            height: 5,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 15.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                        (Preferences.img.isNotEmpty)
                                            ? Text(
                                                'Edit URL Image',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              )
                                            : Text(
                                                'Enter your URL Image',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                        const SizedBox(height: 10.0),
                                        TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          initialValue: Preferences.img,
                                          onChanged: (value) {
                                            Preferences.img = value;
                                            //setState(() {});
                                          },
                                          style: GoogleFonts.poppins(),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                width: 2,
                                                color: Color(0xFF336bfe),
                                              ),
                                            ),
                                            isDense: true,
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'URL Image',
                                            hintStyle: GoogleFonts.poppins(),
                                            prefixIcon: const Icon(Icons.photo),
                                            prefixIconColor: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                        //Button
                                        MaterialButton(
                                          onPressed: () {
                                            setState(() {});
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
                                            (Preferences.img.isEmpty)
                                                ? 'Register'
                                                : 'Update',
                                            style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                radius: 53,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      NetworkImage(Preferences.img),
                                ),
                              ),
                            ),
                      const SizedBox(height: 10.0),
                      Text(
                        '${Preferences.name} ${Preferences.lastname}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        Preferences.role,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const _OthersData(),
                    ],
                  ),
                ),
                SafeArea(
                  child: Container(
                    height: kToolbarHeight,
                    width: double.infinity,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            _ListTitleCustom(
              text: 'Email',
              icon: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              subText: Preferences.email,
              divider: true,
            ),
            _ListTitleCustom(
              text: 'Number phone',
              icon: const Icon(
                Icons.phone_android_rounded,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              subText: Preferences.number,
              divider: true,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    // <-- for border radius
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                        left: 20.0,
                        right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Container(
                            width: 45,
                            height: 5,
                            margin: const EdgeInsets.symmetric(vertical: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        (Preferences.number.isNotEmpty)
                            ? Text(
                                'Edit number phone',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            : Text(
                                'Enter your number phone',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                        const SizedBox(height: 10.0),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Preferences.number,
                          onChanged: (value) {
                            Preferences.number = value;
                            //setState(() {});
                          },
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
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
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'URL Image',
                            hintStyle: GoogleFonts.poppins(),
                            prefixIcon: const Icon(Icons.phone_android_rounded),
                            prefixIconColor: Colors.red,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        //Button
                        MaterialButton(
                          onPressed: () {
                            setState(() {});
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
                            (Preferences.img.isEmpty) ? 'Register' : 'Update',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                );
              },
            ),
            const _ListTitleCustom(
              text: 'Twitter',
              icon: Icon(
                FontAwesomeIcons.twitter,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              subText: '@jormg_',
              divider: true,
            ),
            const _ListTitleCustom(
              text: 'Dribbble',
              icon: Icon(
                FontAwesomeIcons.dribbble,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              subText: 'www.dribbble.com/jormg_',
              divider: true,
            ),
            const _ListTitleCustom(
              text: 'GitHub',
              icon: Icon(
                FontAwesomeIcons.github,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              subText: 'www.github.com/jor-mg',
            ),
          ],
        ),
      ),
    );
  }
}

class _OthersData extends StatelessWidget {
  const _OthersData({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  '1000',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' Followers',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1,
            width: 30.0,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  '1200',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' Following',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListTitleCustom extends StatelessWidget {
  final String text;
  final String? subText;
  final Widget icon;
  final Widget? trailing;
  final Function()? onPressed;
  final bool? divider;

  const _ListTitleCustom({
    required this.text,
    this.subText,
    required this.icon,
    this.trailing,
    this.onPressed,
    this.divider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: icon,
          horizontalTitleGap: 5.0,
          visualDensity: const VisualDensity(vertical: -1),
          title: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 114, 114, 114),
              fontSize: 10,
            ),
          ),
          subtitle: Text(
            subText!,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 46, 46, 46),
              fontSize: 14,
            ),
          ),
          onTap: onPressed,
          trailing: trailing,
        ),
        (divider == true)
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                child: Divider(
                  thickness: 1.5,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
