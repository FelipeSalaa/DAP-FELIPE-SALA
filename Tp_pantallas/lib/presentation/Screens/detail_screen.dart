// ignore_for_file: unused_import
import 'package:clase18_4/core/entities.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  static const String name = 'detail';
  Materia materia;
  DetailScreen({super.key, required this.materia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 71, 68),
      appBar: AppBar(
        title: Text(materia.name),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(139, 0, 243, 223),
      ),
      body: const Center(
        child: Text(
          'profe:',
          selectionColor: Color.fromARGB(255, 255, 0, 0),
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
