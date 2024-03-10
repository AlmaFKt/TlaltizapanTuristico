import 'package:flutter/material.dart';
import '../Componentes/mi_boton.dart';
import '../Componentes/mi_textfield.dart';
import '../Componentes/variables.dart';
import 'package:get/get.dart';

import 'Inicio_sesion.dart';

class RestContrasena extends StatefulWidget {
  const RestContrasena({super.key});

  @override
  State<RestContrasena> createState() => _RestContrasenaState();
}

class _RestContrasenaState extends State<RestContrasena> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFondo,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, left: 10, right: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Get.to(InicioSesion());
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            SB8,
            Image.asset(
              'imagenes/pueblos-magicos-png.png',
              height: 120,
              width: 250,
            ),
            SB36,
            Text("Restablecer contraseña", style: H2),
            SB36,
            Text(
                "Te enviaremos un correo para que puedas restablecer tu contraseña",
                style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                controller: emailController,
                hintText: 'Ingresa tu Email...',
                obscureText: false,
              ),
            ),
            SB36,
            MyButton(
              text: 'Enviar correo',
              onTap: () {
                //signUserIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
