import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_save/preferences/preferences.dart';
import 'package:user_save/provider/theme_provider.dart';
import 'package:user_save/widgets/widgets.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  final imgController = TextEditingController(text: Preferences.img);
  final nameController = TextEditingController(text: Preferences.name);
  final lastnameController = TextEditingController(text: Preferences.lastname);
  final cityController = TextEditingController(text: Preferences.city);
  final countryController = TextEditingController(text: Preferences.country);

  guardar() {
    Preferences.img = imgController.text;
    Preferences.name = nameController.text;
    Preferences.lastname = lastnameController.text;
    Preferences.city = cityController.text;
    Preferences.country = countryController.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Configuration',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Switch.adaptive(
            value: Preferences.theme,
            onChanged: (value) {
              Preferences.theme = value;
              final themeProvider =
                  Provider.of<ThemeProvider>(context, listen: false);

              value ? themeProvider.setOscuro() : themeProvider.setClaro();
              setState(() {});
            },
          )
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFieldWidget(
                controller: imgController,
                keyBoardType: TextInputType.text,
                hintTexT: 'Ingresa tu foto',
                prefixIcon: const Icon(
                  Icons.photo,
                  color: Colors.grey,
                ),
                //initialValue: Preferences.img,
                // onChanged: (value) {
                //   Preferences.img = value;
                //   setState(() {});
                // },
              ),
              CustomTextFieldWidget(
                controller: nameController,
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu nombre',
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                // initialValue: Preferences.name,
                // onChanged: (value) {
                //   Preferences.name = value;
                //   setState(() {});
                // },
              ),
              CustomTextFieldWidget(
                controller: lastnameController,
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu apellido',
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                // initialValue: Preferences.lastname,
                // onChanged: (value) {
                //   Preferences.lastname = value;
                //   setState(() {});
                // },
              ),
              CustomTextFieldWidget(
                controller: cityController,
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu ciudad',
                prefixIcon: const Icon(
                  Icons.location_city,
                  color: Colors.grey,
                ),
                // initialValue: Preferences.city,
                // onChanged: (value) {
                //   Preferences.city = value;
                //   setState(() {});
                // },
              ),
              CustomTextFieldWidget(
                controller: countryController,
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu país',
                prefixIcon: const Icon(
                  Icons.abc,
                  color: Colors.grey,
                ),
                // initialValue: Preferences.country,
                // onChanged: (value) {
                //   Preferences.country = value;
                //   setState(() {});
                // },
              ),
              RadioListTile(
                activeColor: Colors.green,
                value: 1,
                groupValue: Preferences.gender,
                title: Text('Masculino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                },
              ),
              RadioListTile(
                activeColor: Colors.green,
                value: 2,
                groupValue: Preferences.gender,
                title: Text('Femenino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 2;
                  setState(() {});
                },
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.green,
                onPressed: () {
                  guardar();
                },
                child: const Text(
                  'SAVE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
