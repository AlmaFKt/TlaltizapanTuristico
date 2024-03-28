import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tlaltizapan_turistico/Sesion_Usuario/registro_usuario.dart';
import '../Componentes/mi_boton.dart';
import '../Componentes/mi_textfield.dart';
import 'package:get/get.dart';
import '../Componentes/variables.dart';
import '../Responsivo/layout_responsivo.dart';
import '../Responsivo/movil_body.dart';
import '../Responsivo/tablet_body.dart';
import 'restablecer_contrasena.dart';

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
      //el color de fondo podrá ser cambiado a var si se añade un modo oscuro y claro.
      backgroundColor: ColorFondo,

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 1024,
                  maxWidth: 400,
                ),
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
                            Get.to(ResponsiveLayout(
                              MobileBody: MovilBody(),
                              TabletBody: TabletBody(),
                            ));
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
                            //Titulo y logo
                            Padding(
                              padding: EdgeInsets.only(left: 0, ),
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
                
                            SB36,
                
                            //Formulario de inicio de sesión
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 220),
                                  child: Text(
                                    "Bienvenido",
                                    style: H2,
                                  ),
                                ),
                                SB16,
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "Ingresa tus credenciales para acceder a tu cuenta",
                                    style: H4,
                                  ),
                                ),
                                SB36,
                
                                //Campos de texto
                                Padding(
                                  padding: EdgeInsets.only(right: 275),
                                  child: Text("Email:", style: H4),
                                ),
                                SB8,
                                MyTextField(
                                  controller: emailController,
                                  hintText: 'Ingresa tu Email...',
                                  obscureText: false,
                                ),
                                SB16,
                                Padding(
                                  padding: EdgeInsets.only(right: 240),
                                  child: Text("Contraseña:", style: H4),
                                ),
                                SB8,
                                MyTextField(
                                  controller: passwordController,
                                  hintText: 'Ingresa tu Contraseña...',
                                  obscureText: true,
                                ),
                                SB36,
                
                                //Botón de inicio de sesión
                                MyButton(
                                  text: 'INICIAR SESIÓN',
                                  onTap: () {
                                    //signUserIn();
                                  },
                                ),
                                SB36,
                
                                //Texto de restablecer contraseña
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("¿Olvidaste tu contraseña? ", style: H4),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(RestContrasena());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color.fromARGB(255, 4, 35, 62),
                                              width: 1.0,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          "Restablecer Contraseña",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 4, 35, 62),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SB8,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("¿Aún no tienes una cuenta? ", style: H4),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(RegistroUsuario());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color.fromARGB(255, 4, 35, 62),
                                              width: 1.0,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          "Registrarse",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 4, 35, 62),
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
          ),
        ),
      ),
    );
  }
}
