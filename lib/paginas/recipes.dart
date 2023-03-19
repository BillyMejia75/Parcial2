import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:parcial2/json/chat_json.dart';
import 'package:parcial2/temas/colores.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcial2/json/recipes_json.dart';
import 'package:parcial2/paginas/recipes.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  int MenuActivo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      //appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.print,
                    color: blanco,                    
                    ),
                  Text(
                    "Recipes",
                    style: TextStyle(
                        fontSize: 23, color: blanco, fontWeight: FontWeight.bold),
              ),
              ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                        child: Divider(color: white.withOpacity(0.3)),
                      ),
                      MenuActivo == 0 ? getRecipes() : getLlamadasPerdidas()
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getRecipes() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(recipes.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(recipes[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recipes[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Precio " + recipes[index]['precio'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getLlamadasPerdidas() {
    return Container();
  }
}
