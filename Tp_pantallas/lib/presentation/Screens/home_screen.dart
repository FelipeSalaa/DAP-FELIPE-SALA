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
    Materia Matematica = Materia();
    Matematica.name = "Matematica";
    Matematica.description = "Sofia Roma";
    Materia Lengua = Materia();
    Lengua.name = "Lengua";
    Lengua.description = "Piliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii";
    Materia Dap1 = Materia();
    Dap1.name = "Dap1";
    Dap1.description = "Ale";
    Materia Dap2 = Materia();
    Dap2.name = "Dap2";
    Dap2.description = "Ruben";
    Materia HRC = Materia();
    HRC.name = "HRC";
    HRC.description = "Mirko & Prieto";
    Materia ST = Materia();
    ST.name = "ST";
    ST.description = "Mirko & Prieto";
    Materia CultJudia = Materia();
    CultJudia.name = "Cultura Judia";
    CultJudia.description = "Meir";
    Materia EdJudia = Materia();
    EdJudia.name = "Educacion Judia";
    EdJudia.description = "Demian";
    Materia EdFisica = Materia();
    EdFisica.name = "Educación Física";
    EdFisica.description = "Mariano Moreno";
    Materia Quimica = Materia();
    Quimica.name = "Quimica";
    Quimica.description = "Pablito Sr. Stark";
    Materia Filosofia = Materia();
    Filosofia.name = "Filosofia";
    Filosofia.description = "Daniela Bustamante";
    Materia PP = Materia();
    PP.name = "Producción De Proyectos";
    PP.description = "Facufablab & Edu";

    List<Materia> Materias = [
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
            itemCount: titulos.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    titulos[index],
                  ),
                  subtitle: Text(descripcion[index]),
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
