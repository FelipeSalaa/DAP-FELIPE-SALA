// ignore_for_file: unused_import

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:list_modify/core/data/goles_de_messi.dart';


// ignore: must_be_immutable
class ListView extends StatelessWidget {
  static const String name = 'login';
  const ListView({super.key});


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
          child: ListView.build(
            itemCount: jogadores.length,
            itemBuilder: (context, index) {
              final materia = jogadores[index]; // creas una variable que hace referencia a un solo objeto de la lista por vez
              return Card(
                color: const Color.fromARGB(255, 83, 159, 194),
                child: ListTile(
                 title: Text(materia.name),
                 subtitle: Text(materia.description),
                ),
              ),
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