import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'detail_screen.dart';
import 'package:clase18_4/core/data/data_materias.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 71, 68),
      appBar: AppBar(
        title: const Text("Materias 5to año"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(139, 0, 243, 223),
      ),
      body: Center(
        child: Container(
          width: 600,
          height: double.infinity,
          color: const Color.fromARGB(71, 5, 51, 49),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          child: ListView.builder(
            itemCount: materias.length,
            itemBuilder: (context, index) {
              final materia = materias[index]; // creas una variable que hace referencia a un solo objeto de la lista por vez
              return Card(
                color: const Color.fromARGB(255, 83, 159, 194),
                child: ListTile(
                  title: Text(materia.name),
                  subtitle: Text(materia.description),
                  onTap: () {
                    context.pushNamed(DetailScreen.name, extra: materia);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
