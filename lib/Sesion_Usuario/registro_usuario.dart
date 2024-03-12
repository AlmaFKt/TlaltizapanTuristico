import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Componentes/mi_fechafield.dart';
import 'package:tlaltizapan_turistico/Componentes/mi_textfield.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';
import 'package:tlaltizapan_turistico/Sesion_Usuario/Inicio_sesion.dart';
import 'package:get/get.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  String? gender = "";
  final nombreController = TextEditingController();
  final apellidoPController = TextEditingController();
  final apellidoMController = TextEditingController();
  final edadController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
            Text("Nombre", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                  controller: nombreController,
                  hintText: "Ingresa tu Nombre...",
                  obscureText: false),
            ),
            SB16,
            Text("Apellido Paterno", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                  controller: apellidoPController,
                  hintText: "Ingresa tu Apeliido Paterno",
                  obscureText: false),
            ),
            SB16,
            Text("Apellido Materno", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                  controller: apellidoMController,
                  hintText: "Ingresa tu Apeliido Materno...",
                  obscureText: false),
            ),
            SB16,
            Text("Sexo", style: H4),
            SB16,
            Column(
              children: <Widget>[
                RadioListTile(
                    title: Text("Mujer"),
                    value: "mujer",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }),
                RadioListTile(
                    title: Text("Hombre"),
                    value: "hombre",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    })
              ],
            ),
            SB16,
            Text("Edad", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: FechaField(
                  controller: edadController,
                  hintText: "Ingresa tu fecha de nacimiento",
                  obscureText: false),
            ),
            SB16,
            Text("Email", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                  controller: edadController,
                  hintText: "Ingresa tu correo Email...",
                  obscureText: false),
            ),
            SB16,
            Text("Contraseña", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                  controller: passwordController,
                  hintText: "Ingresa tu contraseña...",
                  obscureText: false),
            ),
            SB16,
            Text("Confirmar Contraseña", style: H4),
            SB16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyTextField(
                  controller: passwordController,
                  hintText: "Confirma tu contraseña...",
                  obscureText: false),
            ),
            SB16,
          ],
        ),
      ),
    );
  }
}
