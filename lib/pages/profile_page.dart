import 'package:flutter/material.dart';
import 'package:user_save/preferences/preferences.dart';
import 'package:user_save/widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Column(
        children: [
          (Preferences.img == '')
              ? const CircleAvatar(
                  radius: 70,
                  child: Icon(
                    Icons.photo,
                    size: 30,
                  ),
                )
              : CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(Preferences.img),
                ),
          Text('Mi nombre es: ${Preferences.name}'),
          Text('Mi apellido es: ${Preferences.lastname}'),
          Text('Mi ciudad es: ${Preferences.city}'),
          Text('Mi país es: ${Preferences.country}'),
          (Preferences.gender != 1)
              ? const Text('Genero: femenino')
              : const Text('Genero: masculino'),
        ],
      ),
    );
  }
}
