import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: unused_import
import 'package:clase18_4/core/entities.dart';
import 'package:clase18_4/core/data/data_users.dart';
import 'package:clase18_4/presentation/Screens/home_screen.dart';

TextEditingController passController = TextEditingController();
TextEditingController userController = TextEditingController();

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  String userName;
  LoginScreen({super.key, this.userName = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: userController,
            decoration: const InputDecoration(
              hintText: 'Usuario',
              icon: Icon(Icons.person_2_outlined),
            ),
          ),
          TextField(
            controller: passController,
            decoration: const InputDecoration(
              hintText: 'Contraseña',
              icon: Icon(Icons.lock_outline_rounded),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              if (userController.text == '' || passController.text == '') {
                SnackBar snackBar = const SnackBar(
                  content: Text('Campo Vacío'),
                  duration: Duration(milliseconds: 1500),
                  backgroundColor: Color.fromARGB(182, 237, 8, 8),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                return;
              }

              for (var i = 0; i < cuentas.length; i++) {
                final user = cuentas[i];
                if (user.name == userController.text && user.pass == passController.text) {
                  SnackBar snackBar = const SnackBar(
                    content: Text('Bienvenido'),
                    duration: Duration(milliseconds: 1500),
                    backgroundColor: Color.fromARGB(182, 105, 224, 123),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  context.pushNamed(HomeScreen.name, extra: user.name);
                } else if (i == cuentas.length - 1) {   //si el input esta mal y ya se reviso el último usuario
                  SnackBar snackBar = const SnackBar(
                    content: Text('Usuario o Contraseña Incorrectos'),
                    duration: Duration(milliseconds: 1500),
                    backgroundColor: Color.fromARGB(182, 237, 8, 8),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }
            },
            child: const Text('Iniciar sesión'),
          ),
        ],
      ),
    );
  }
}

              /*
              int inputUser = users.indexOf(userController.text);
              int inputPass = pass.indexOf(passController.text);

              if ((inputUser == inputPass && inputUser != -1)) {
                SnackBar snackBar = const SnackBar(
                  content: Text('Login Exitoso'),
                  duration: Duration(milliseconds: 1500),
                  backgroundColor: Color.fromARGB(182, 105, 224, 123),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                context.pushNamed(HomeScreen.name, extra: users[inputUser]);
              } else if (userController.text == '' ||  passController.text == '') {
                SnackBar snackBar = const SnackBar(
                  content: Text('Campo Vacío'),
                  duration: Duration(milliseconds: 1500),
                  backgroundColor: Color.fromARGB(182, 237, 8, 8),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                SnackBar snackBar = const SnackBar(
                  content: Text('Usuario o Contraseña Incorrectos'),
                  duration: Duration(milliseconds: 1500),
                  backgroundColor: Color.fromARGB(182, 237, 8, 8),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }*/