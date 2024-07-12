import 'package:clase18_4/core/entities.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  static const String name = 'detail';
  final Materia materia;
  const DetailScreen({super.key, required this.materia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 71, 68),
      appBar: AppBar(
        title: Text(materia.name),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(139, 0, 243, 223),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 150),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 49, 156, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
              'Materia: ${materia.name}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
            ),            
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 49, 156, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
              'Profesor/a a cargo: ${materia.description}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 100), //separacion
            if (materia.image != null && materia.image2 == null)
              SizedBox(
                height: 300,
                child: Image.network(
                  materia.image!,
                  fit: BoxFit.cover,
                ),
              ),
            if (materia.image != null && materia.image2 != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    materia.image!,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 50), //separacion
                  Image.network(
                    materia.image2!,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
