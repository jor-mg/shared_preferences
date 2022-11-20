import 'package:flutter/material.dart';

//Widgets
import 'package:user_save/widgets/custom_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: const Center(
        child: Text('HomePage'),
      ),
    );
  }
}
