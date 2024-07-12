import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:clase18_4/core/data/data_users.dart';
import 'home_screen.dart';

TextEditingController passController = TextEditingController();
TextEditingController userController = TextEditingController();

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 71, 68),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: userController,
            decoration: const InputDecoration(
              hintText: 'Usuario',
              border:OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(90))),
              filled: true,
              fillColor:  Color.fromARGB(255, 152, 230, 217),
              icon: Icon(Icons.person_2_outlined),
              iconColor: Color.fromARGB(200, 255, 255, 255)
              
            ),
          ),
          TextField(
            controller: passController,
            decoration: const InputDecoration(
              hintText: 'Contraseña',
              border:OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(90))),
              filled: true,
              fillColor: Color.fromARGB(255, 152, 230, 217),
              icon: Icon(Icons.lock_outline_rounded),
              iconColor: Color.fromARGB(200, 255, 255, 255)
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
                  backgroundColor: Color.fromARGB(136, 237, 8, 8),
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
                    backgroundColor: Color.fromARGB(166, 105, 224, 123),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  context.pushNamed(HomeScreen.name);
                return;
                } else if (i == cuentas.length - 1) {   //si el input esta mal y ya se reviso el último usuario
                  SnackBar snackBar = const SnackBar(
                    content: Text('Usuario o Contraseña Incorrectos'),
                    duration: Duration(milliseconds: 1500),
                    backgroundColor: Color.fromARGB(136, 237, 8, 8),
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