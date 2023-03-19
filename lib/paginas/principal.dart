import 'package:flutter/material.dart';
import 'package:parcial2/paginas/recipes.dart';
import 'package:parcial2/paginas/account.dart';
import 'package:parcial2/paginas/formPlans.dart';
import 'package:parcial2/paginas/Groceries.dart';
import 'package:parcial2/temas/colores.dart';

import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0; //inciar index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
        Recipes(),
        FormPlans(),
        Groceries(),
        Account(),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [
      Icons.food_bank,
      Icons.menu,
      LineIcons.shoppingCart,
      LineIcons.userCircleAlt
    ];
    List textoItems = [
      "Recipes",
      "Plans",
      "Groceries",
      "Account"
    ];
    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textoItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      paginaIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        iconosItems[index],
                        color: paginaIndex == index
                            ? primary
                            : white.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: paginaIndex == index
                                  ? primary
                                  : white.withOpacity(0.5))),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}