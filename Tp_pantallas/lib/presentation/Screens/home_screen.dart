// ignore_for_file: unused_import
import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:clase18_4/core/entities.dart';
import 'package:clase18_4/core/data/data_materias.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  String userName;
  HomeScreen({super.key, this.userName = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text("Materias 5to año"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(189, 0, 243, 57),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: double.infinity,
          color: const Color.fromARGB(122, 0, 0, 76),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          child: ListView.builder(
            itemCount: materias.length,
            itemBuilder: (context, index) {
              final materia = materias[index]; // creas una variable que hace referencia a un solo objeto de la lista por vez
              return Card(
                color: const Color.fromARGB(255, 2, 221, 255),
                child: ListTile(
                  title: Text(materia.name),
                  subtitle: Text(materia.description),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
