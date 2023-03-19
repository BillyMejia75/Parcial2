import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcial2/temas/colores.dart';

class FormPlans extends StatefulWidget {
  const FormPlans({super.key});

  @override
  State<FormPlans> createState() => _FormPlansState();
}

class _FormPlansState extends State<FormPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: getAppBar(),
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.print,
                    color: blanco,                    
                    ),
                  Text(
                    "Plans",
                    style: TextStyle(
                        fontSize: 23, color: blanco, fontWeight: FontWeight.bold),
              ),
              ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          child: Center(
            child: Text("Datos del titular de la tarjeta",
                style: TextStyle(
                    fontSize: 24, color: blanco, fontWeight: FontWeight.w700)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajasTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blanco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.user, color: blanco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Nombre del propietario",
                      hintStyle: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajasTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blanco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.numbers_rounded, color: blanco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Numero de tarjeta",
                      hintStyle: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajasTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blanco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.numbers, color: blanco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Fecha de expiracion",
                      hintStyle: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajasTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blanco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.numbers, color: blanco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "CVC",
                      hintStyle: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajasTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blanco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email, color: blanco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Correo electronico",
                      hintStyle: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 25),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              minWidth: 200.0,
              height: 45,
              color: Color.fromARGB(255, 51, 54, 44),
              onPressed: () {},
              child: Text('Ingresar', style: TextStyle(color: blanco)),
            ),
            SizedBox(height: 15),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              minWidth: 200.0,
              height: 45,
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {},
              splashColor: Color.fromARGB(255, 248, 135, 135),
              child: Text('Atras', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ],
    );
  }
}
