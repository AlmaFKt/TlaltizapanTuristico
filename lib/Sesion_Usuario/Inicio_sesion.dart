import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';

import '../Componentes/mi_boton.dart';
import '../Componentes/mi_textfield.dart';

class InicioSesion extends StatefulWidget {
  InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  //Controladores para los campos de texto
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      //el color de fondo podrá ser cambiado a var si se añade un modo oscuro y claro o se desea usar el mismo color de fondo en varias pantallas
      backgroundColor: Color.fromARGB(255, 239, 243, 248),
      
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Botón de regreso
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 10, right: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      // Get.to(HomePage());
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
                  color: Color.fromARGB(255, 245, 245, 245),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      //Titulo y logo
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 5),
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
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 36),
//36,16,8 y 4 son los espacios entre los elementos (sizedbox)
                      //Formulario de inicio de sesión
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 325),
                            child: Text(
                              "Bienvenido",
                              style: H2,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: EdgeInsets.only(right: 110),
                            child: Text(
                              "Ingresa tus credenciales para acceder a tu cuenta",
                              style: H4,
                            ),
                          ),
                          const SizedBox(height: 36),

                          //Campos de texto
                          Padding(
                            padding: EdgeInsets.only(right: 390),
                            child: Text("Email:", style: H4),
                          ),
                          const SizedBox(height: 8),
                          MyTextField(
                            controller: emailController,
                            hintText: 'Ingresa tu Email...',
                            obscureText: false,
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: EdgeInsets.only(right: 350),
                            child: Text("Contraseña:", style: H4),
                          ),
                          const SizedBox(height: 8),
                          MyTextField(
                            controller: passwordController,
                            hintText: 'Ingresa tu Contraseña...',
                            obscureText: true,
                          ),
                          const SizedBox(height: 36),

                          //Botón de inicio de sesión
                          MyButton(
                            text: 'INICIAR SESIÓN',
                            onTap: () {
                              //signUserIn();
                            },
                          ),
                          const SizedBox(height: 36),

                          //Texto de restablecer contraseña
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, 
                            children: [
                              Text("¿Olvidaste tu contraseña? ", style: H4),
                              GestureDetector(
                                onTap: () {
                                  // Get.to(ResetPassword());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color.fromARGB(255, 4,35,62), 
                                        width:
                                            1.0, 
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Restablecer Contraseña",
                                    style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 4,35,62),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
