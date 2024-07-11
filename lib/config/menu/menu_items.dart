

import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String subTittle;
  final String link;
  final IconData icon;

  MenuItem({required this.tittle, required this.subTittle, required this.link, required this.icon});
}

 List<MenuItem> appMenuItems = <MenuItem>[
  MenuItem(
    tittle: 'Botones',
    subTittle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined),
    MenuItem(
    tittle: 'Tarjetas',
    subTittle: 'Un contenedor estilizadp',
    link: '/buttons',
    icon: Icons.credit_card)
];