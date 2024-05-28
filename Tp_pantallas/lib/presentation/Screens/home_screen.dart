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

    List<String> titulos = ["primero", "segundo", "tercero"];
    List<String> descripcion = ["1", "2", "3"];

    return Scaffold(
      body: ListView.builder(
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
      ),
    );
  }
}