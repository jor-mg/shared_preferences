import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTitleCustom extends StatelessWidget {
  final String text;
  final Widget icon;
  final Widget? trailing;
  final Widget? routeWidget;

  const ListTitleCustom({
    super.key,
    required this.text,
    required this.icon,
    this.trailing,
    this.routeWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      horizontalTitleGap: 5.0,
      visualDensity: const VisualDensity(vertical: -2),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          color: const Color.fromARGB(255, 114, 114, 114),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => routeWidget!));
      },
      trailing: trailing,
    );
  }
}
