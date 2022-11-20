import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_save/actividad/pages/pages.dart';
import 'package:user_save/actividad/widgets/widgets.dart';
import 'package:user_save/preferences/preferences.dart';

class DrawerCustomWidget extends StatelessWidget {
  const DrawerCustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.85,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _DrawerHeaderCustom(),
            ListTitleCustom(
              text: 'Profile',
              icon: const Icon(
                Icons.person,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Text(
                '*',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87)),
              ),
              routeWidget: const ProfileAcPage(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            ListTitleCustom(
              text: 'All inbox',
              icon: const Icon(
                Icons.inbox,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Text(
                '15',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87)),
              ),
            ),
            ListTitleCustom(
              text: 'Primary',
              icon: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Text(
                '10',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87)),
              ),
            ),
            ListTitleCustom(
              text: 'Social',
              icon: const Icon(
                Icons.people,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Container(
                alignment: Alignment.center,
                width: 60,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFF95b8ff),
                ),
                child: Text(
                  '14 news',
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87),
                    fontWeight: FontWeight.w600,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ),
            ListTitleCustom(
              text: 'Promotions',
              icon: const Icon(
                Icons.label,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Container(
                alignment: Alignment.center,
                width: 69,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFF7aeac4),
                ),
                child: Text(
                  '99+ news',
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87),
                    fontWeight: FontWeight.w600,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Text(
                'All labels',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            const ListTitleCustom(
              text: 'Starred',
              icon: Icon(
                Icons.star,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
            ),
            ListTitleCustom(
              text: 'Important',
              icon: const Icon(
                Icons.label_important,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Text(
                '1',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87)),
              ),
            ),
            const ListTitleCustom(
              text: 'Send',
              icon: Icon(
                Icons.send,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
            ),
            const ListTitleCustom(
              text: 'Outbox',
              icon: Icon(
                Icons.upgrade,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
            ),
            const ListTitleCustom(
              text: 'Drafts',
              icon: Icon(
                Icons.file_open_sharp,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
            ),
            ListTitleCustom(
              text: 'All emails',
              icon: const Icon(
                Icons.mail,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Text(
                '99+',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87)),
              ),
            ),
            ListTitleCustom(
              text: 'Spam',
              icon: const Icon(
                Icons.warning,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              trailing: Text(
                '99+',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 87, 87, 87)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerHeaderCustom extends StatelessWidget {
  const _DrawerHeaderCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        image: DecorationImage(
          image: AssetImage('assets/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        //margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              (Preferences.img == '')
                  ? const CircleAvatar(
                      radius: 49,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 46,
                        child: Icon(
                          Icons.photo,
                          size: 30,
                        ),
                      ),
                    )
                  : CircleAvatar(
                      radius: 49,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 46,
                        backgroundImage: NetworkImage(Preferences.img),
                      ),
                    ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
