import 'package:flutter/material.dart';
import 'package:parcial2/temas/colores.dart';
import 'package:parcial2/paginas/recipes.dart';
import 'package:parcial2/json/recipes_json.dart';
import 'package:parcial2/json/groceries_json.dart';
import 'package:animate_do/animate_do.dart';



class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  int MenuActivo = 0;
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
                    "Groceries",
                    style: TextStyle(
                        fontSize: 23, color: blanco, fontWeight: FontWeight.bold),
              ),
              ],
              ),   

              //Bebidas           
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12, right: 5, left: 5),
                        child: Divider(color: white.withOpacity(0.3)),
                      ),
                      Text(
                        "Bebidas",
                        style: TextStyle(
                          fontSize: 22, color: white.withOpacity(0.5), fontWeight: FontWeight.bold
                        ),
                  )
                    ],
                  ),                  
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2, right: 5, left: 5),
                        child: Divider(color: white.withOpacity(0.3)),
                      ),
                        MenuActivo == 0 ? getDrinks() : getLlamadasPerdidas()
                    ],
                  ),
                ],
              ),

              //Comidas
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, right: 5, left: 5),
                        child: Divider(color: white.withOpacity(0.3)),
                      ),
                      Text(
                        "Comidas",
                        style: TextStyle(
                          fontSize: 22, color: white.withOpacity(0.5), fontWeight: FontWeight.bold
                        ),
                  )
                    ],
                  ),                  
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1, right: 5, left: 5),
                        child: Divider(color: white.withOpacity(0.3)),
                      ),
                        MenuActivo == 0 ? getFoods() : getLlamadasPerdidas()
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

  Widget getDrinks() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(bebidas.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
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
                                  image: NetworkImage(bebidas[index]['img']),
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
                                bebidas[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
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

  Widget getFoods() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(comidas.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
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
                                  image: NetworkImage(comidas[index]['img']),
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
                                comidas[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
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

