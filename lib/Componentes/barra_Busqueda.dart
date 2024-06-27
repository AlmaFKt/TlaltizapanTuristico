import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarraBusqueda extends StatefulWidget {
  const BarraBusqueda({super.key});

  @override
  State<BarraBusqueda> createState() => _BarraBusquedaState();
}

class _BarraBusquedaState extends State<BarraBusqueda> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Busca en Tlaltizapan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Buscar...",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 226, 228, 236),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(CupertinoIcons.slider_horizontal_3),
                        onPressed: () {
                          _showFilterOptions(context);
                        },
                      ),
                      Text("Filtrar", style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Método para mostrar las opciones de filtrado
void _showFilterOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150, 
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.date_range),
                title: Text('Más recientes primero'),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.sort_by_alpha),
                title: Text('Ordenar de A-Z'),
                onTap: () {
                 
                },
              ),
            ],
          ),
        );
      },
    );
  }
  
}
