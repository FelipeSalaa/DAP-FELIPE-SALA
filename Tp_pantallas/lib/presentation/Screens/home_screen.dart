// ignore_for_file: unused_import
import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:clase18_4/core/entities.dart';
import 'package:clase18_4/core/data.dart';

List<Materia> materia  = materias; // <obj> nombre = lista
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  String userName;
  HomeScreen({super.key, this.userName = ""});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text("Materias 5to año"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(189, 0, 243, 57),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: double.infinity,
          color: Color.fromARGB(122, 0, 0, 76),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          child: ListView.separated(
            itemCount: materias.length,
            itemBuilder: (context, index) {
              final materia = materias[index];
              return Card(
                
                color: Color.fromARGB(255, 2, 221, 255),
                child: ListTile(
                  title: Text(materia.name),
                  subtitle: Text(materia.description),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}