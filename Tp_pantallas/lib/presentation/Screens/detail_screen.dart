// ignore_for_file: unused_import
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:clase18_4/core/data/data_materias.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  static const String name = 'detail';
  String nombre;
  String description;
  DetailScreen({super.key, required this.nombre, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 71, 68),
      appBar: AppBar(
        title: Text(nombre),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(139, 0, 243, 223),
      ),
      body: Center(
      //  child: 
              ),
    );
  }
}
