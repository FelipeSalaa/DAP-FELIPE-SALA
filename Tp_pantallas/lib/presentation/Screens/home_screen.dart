// ignore_for_file: unused_import
import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  String userName;
  HomeScreen({super.key, this.userName = ""});

  @override
  Widget build(BuildContext context) {
    List<Object> Materias = [
      Matematica,
      Lengua,
      Quimica,
      Filosofia,
      EdFisica,
      EdJudia,
      CultJudia,
      Dap1,
      Dap2,
      HRC,
      ST,
      PP
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Materias 5to año"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(86, 0, 230, 54),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: double.infinity,
          color: const Color.fromARGB(37, 60, 57, 46),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          child: ListView.separated(
            itemCount: Materias.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    Materias[index],
                  ),
                  subtitle: Text(Materias.description[index]),
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
