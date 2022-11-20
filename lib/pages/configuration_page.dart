import 'package:flutter/material.dart';
import 'package:user_save/preferences/preferences.dart';
import 'package:user_save/widgets/widgets.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuration Screen'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFieldWidget(
                keyBoardType: TextInputType.text,
                hintTexT: 'Ingresa tu foto',
                prefixIcon: Icon(Icons.photo),
                initialValue: Preferences.img,
                onChanged: (value) {
                  Preferences.img = value;
                  setState(() {});
                },
              ),
              CustomTextFieldWidget(
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu nombre',
                prefixIcon: Icon(Icons.person),
                initialValue: Preferences.name,
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
              ),
              CustomTextFieldWidget(
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu apellido',
                prefixIcon: Icon(Icons.person),
                initialValue: Preferences.lastname,
                onChanged: (value) {
                  Preferences.lastname = value;
                  setState(() {});
                },
              ),
              CustomTextFieldWidget(
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu ciudad',
                prefixIcon: Icon(Icons.location_city),
                initialValue: Preferences.city,
                onChanged: (value) {
                  Preferences.city = value;
                  setState(() {});
                },
              ),
              CustomTextFieldWidget(
                keyBoardType: TextInputType.name,
                hintTexT: 'Ingresa tu país',
                prefixIcon: Icon(Icons.abc),
                initialValue: Preferences.country,
                onChanged: (value) {
                  Preferences.country = value;
                  setState(() {});
                },
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
                color: Colors.blue,
                onPressed: () {
                  setState(() {});
                },
                child: Text('Presionas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
