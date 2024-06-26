import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tlaltizapan_turistico/Componentes/mi_boton.dart';
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
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 800,
                    maxWidth: 390,
                  ),
                  child: Column(
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 245, 245),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 0,
                                ),
                                child: Row(
                                  children: [
                                    Transform.rotate(
                                      angle: 90 * pi / 180,
                                      child: SvgPicture.asset(
                                        'imagenes/2070573.svg',
                                        height: 50,
                                      ),
                                    ),
                                    Text(
                                      'Tlaltizapán Turístico',
                                      style: H1,
                                    )
                                  ],
                                ),
                              ),

                              SB36,
                              //Formulario de Registro de usuario
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 130),
                                    child: Text(
                                      'Registro de Usuario',
                                      style: H2,
                                    ),
                                  ),
                                  SB16,
                                  Padding(
                                    padding: EdgeInsets.only(right: 50),
                                    child: Text(
                                      'Ingresa tus datos correctamente',
                                      style: H3,
                                    ),
                                  ),
                                  SB36,
                                  Container(
                                    height: 505,
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 275),
                                          child: Text("Nombre", style: H4),
                                        ),
                                        SB8,
                                        MyTextField(
                                            controller: nombreController,
                                            hintText: "Ingresa tu Nombre...",
                                            obscureText: false),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 220),
                                          child: Text("Apellido Paterno",
                                              style: H4),
                                        ),
                                        SB8,
                                        MyTextField(
                                            controller: apellidoPController,
                                            hintText:
                                                "Ingresa tu Apeliido Paterno",
                                            obscureText: false),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 220),
                                          child: Text("Apellido Materno",
                                              style: H4),
                                        ),
                                        SB8,
                                        MyTextField(
                                            controller: apellidoPController,
                                            hintText:
                                                "Ingresa tu Apeliido Paterno",
                                            obscureText: false),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 300),
                                          child: Text("Sexo", style: H4),
                                        ),
                                        SB8,
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
                                            }),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 300),
                                          child: Text("Edad", style: H4),
                                        ),
                                        SB8,
                                        FechaField(
                                          controller: edadController,
                                          hintText:
                                              "Ingresa tu fecha de nacimiento",
                                          obscureText: false,
                                        ),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 300),
                                          child: Text("Email", style: H4),
                                        ),
                                        SB8,
                                        MyTextField(
                                          controller: edadController,
                                          hintText:
                                              "Ingresa tu correo Email...",
                                          obscureText: false,
                                        ),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 280),
                                          child: Text("Contraseña", style: H4),
                                        ),
                                        SB8,
                                        MyTextField(
                                            controller: passwordController,
                                            hintText:
                                                "Ingresa tu contraseña...",
                                            obscureText: false),
                                        SB16,
                                        Padding(
                                          padding: EdgeInsets.only(right: 195),
                                          child: Text("Confirmar Contraseña",
                                              style: H4),
                                        ),
                                        SB8,
                                        MyTextField(
                                            controller: passwordController,
                                            hintText:
                                                "Confirma tu contraseña...",
                                            obscureText: false),
                                        SB36,
                                        MyButton(
                                          text: "Enviar",
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
